bookmark_icon = ->
  $("#bookmark-link").click ->
    $(this).children('i').toggleClass('fa-star-o')

$(document).on('page:change', bookmark_icon)