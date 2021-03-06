class Panel::BlogsController < ApplicationController
  
	before_filter :require_user
	before_filter :find_blog
  
  def edit
	  
	end
	
	def update
		if @blog.update_attributes(params[:blog])
			redirect_to edit_panel_blog_path(current_user.login), :notice => "Update Success!"
		else
			render :action => "edit"
		end
	end
  

	protected
	
	def find_blog
		@blog = current_user.blog
	end
	
end
