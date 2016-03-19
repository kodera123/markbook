module MarkbookHelper
  def bookmark_icon(post, user)
    if user
      if user.markbooks.exists?(post: post)
        '<i class="fa fa-star fa-2x"></i>'
      else
        '<i class="fa fa-star fa-star-o fa-2x"></i>'
      end
    end
  end
end
