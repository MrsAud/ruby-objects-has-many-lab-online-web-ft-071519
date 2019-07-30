class Author
  attr_accessor :name
  attr_reader :posts
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post)
    @posts << post
    post.author = self unless post.author == self
  end
  
  def add_post_by_title(title)
    post = post.new(title)
  end

end