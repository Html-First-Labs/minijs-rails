module Utilities
   
  def self.markdown_to_html(content)
    markdown = Redcarpet::Markdown.new(
      Redcarpet::Render::HTML.new(
        hard_wrap: true,
        link_attributes: { target: '_blank' },
        fenced_code_blocks: true,
      ),
      autolink: true, 
      space_after_headers: true,
      fenced_code_blocks: true,
      tables: true,
      strikethrough: true
    )
    markdown.render(content)
  end
  
  def self.html_with_colon_attributes_removed(html)

    # Parse the HTML with Nokogiri
    doc = Nokogiri::HTML.fragment(html)

    # Iterate over all elements
    doc.traverse do |node|
      if node.element?
        node.attributes.each do |name, attr|
          # Remove the attribute if it doesn't start with ":"
          node.remove_attribute(name) if name.start_with?(":")
        end
      end
    end

    doc.to_html

  end

  def self.html_with_css_classes_removed(html)

    # Parse the HTML with Nokogiri
    doc = Nokogiri::HTML.fragment(html)

    # Iterate over all elements
    doc.traverse do |node|
      if node.element?
        node.attributes.each do |name, attr|
          # Remove the attribute if it doesn't start with ":"
          node.remove_attribute(name) if name == "class"
        end
      end
    end

    doc.to_html

  end

  def self.html_with_svgs_removed(html)
    # Parse the HTML with Nokogiri
    doc = Nokogiri::HTML.fragment(html)
  
    # Search for all SVG elements
    doc.search('svg').each do |old_svg|
      # Create a new, empty SVG element
      new_svg = Nokogiri::XML::Node.new("svg", doc)
  
      # Replace the old SVG with the new, empty SVG
      old_svg.replace(new_svg)
    end
  
    # Return the modified HTML as a string
    doc.to_html
  end


  def self.stripped_html_snippet(html)
    html = Utilities.html_with_css_classes_removed(html)
    html = Utilities.html_with_colon_attributes_removed(html)
    html
  end

  def self.html_snippet_with_no_external_assets(html)
    # Parse the HTML content with Nokogiri
    doc = Nokogiri::HTML(html)

    # Remove <link rel="stylesheet"> tags
    doc.search('link[rel="stylesheet"]').each(&:remove)

    # Remove <script src="..."> tags
    doc.search('script[src]').each(&:remove)

    # Output the modified HTML
    doc.to_html
  end

  def self.diff_samples(string1,string2)
    Diffy::Diff.new(string1, string2).to_s(:html_simple)
  end

end