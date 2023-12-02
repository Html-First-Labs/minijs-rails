class AppController < ApplicationController
  def index 
  end


  def show_example
    
    if params[:file].present?
      @filename = "examples/#{params[:file]}" 
    end
    full_path = Rails.root.join('app', 'views', 'examples', "#{params[:file]}.html.erb")

    @parsed_content = FrontMatterParser::Parser.parse_file(full_path)
    @page_title = @parsed_content.front_matter.try(:[],"title") || params[:file].titleize

    render :template => @filename, :layout => "examples"
  end

  def examples

    if params[:snippet].present?
      @filename = "examples/#{params[:snippet]}" 

      full_path = Rails.root.join('app', 'views', 'examples', "#{params[:snippet]}.html.erb")

      @parsed_content = FrontMatterParser::Parser.parse_file(full_path)
      @page_title = @parsed_content.front_matter.try(:[],"title") || params[:file].titleize
    end

  end
end