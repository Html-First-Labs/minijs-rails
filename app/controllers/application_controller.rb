class ApplicationController < ActionController::Base

  def support_partial_response
    if request.headers['HX-Request']
      @async_request = true
      render :layout => false
    else  
      render 
    end
  end

  def get_active_list 
    if params[:list_id]
      @active_list = List.find(params[:list_id])
      @recipes = @active_list.recipes
    else 
      @recipes = []
    end
  end
  
end