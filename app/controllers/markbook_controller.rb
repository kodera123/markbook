class MarkbookController < ApplicationController
	def toggle
	    post_id = params[:post_id]
	    user_bookmarks = current_user.markbooks
	    if user_bookmarks.exists?(post: post_id)
	      user_bookmarks.where(post: post_id).destroy_all
	    else
	      user_bookmarks.create(user: current_user, post: Post.find(post_id))
	    end
	    render :nothing => true
    end
end
