class TyperCell < Cell::ViewModel
  property :name
  property :image

  def show
    render
  end

  private

  def post_count
    model.posts.count
  end
end
