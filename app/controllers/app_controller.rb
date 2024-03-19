class AppController < ApplicationController

  layout "full_width", only: [:recipes, :update_lis, :update_recipe, :about]

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

  def about
    @active_list = List.first
    @recipes = @active_list.recipes.no_parent.published

    @lists = List.all
  end

  def recipes
    get_active_list

    if !@active_list 
      redirect_to recipes_path(list_id:List.first.id)
    end

    @lists = List.all
    
    if params[:recipe]
      @recipe = Recipe.find(params[:recipe])   
    end
  end

  def update_list 
    return if !admin_user_signed_in?
    @list = List.find(params[:list_id])
    @list.assign_attributes(list_params)
    @list.save

    get_active_list
    @lists = List.all
    render :recipes
  end


  def update_recipe
    return if !admin_user_signed_in?
    @recipe = Recipe.find(params[:recipe_id])
    @recipe.assign_attributes(recipe_params)
    @recipe.save

    get_active_list
    @lists = List.all
    render :recipes
  end

  def add_recipe

    get_active_list
    if request.post?
      @recipe = Recipe.new(
        recipe_params
      )
      @recipe.save
      @recipe.lists << @active_list
    end
    support_partial_response
  end

  def examples

    if params[:snippet].present?
      @filename = "examples/#{params[:snippet]}" 

      full_path = Rails.root.join('app', 'views', 'examples', "#{params[:snippet]}.html.erb")

      @parsed_content = FrontMatterParser::Parser.parse_file(full_path)
      @page_title = @parsed_content.front_matter.try(:[],"title") || params[:file].titleize
    end

  end
  def list_params
    params.require(:list).permit(:description)
  end
  def recipe_params
    params.require(:recipe).permit(:content,:title)
  end
end