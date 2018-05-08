class BlogsDecorator < Draper::CollectionDecorator

  GRID_NUM = 3

  def index_grid_box
    arr = []
    object.decorate.reverse.each_slice(GRID_NUM){ |blog| arr << h.render("partials/index/grid_box", blogs: blog) }
    arr.join("")
  end

end
