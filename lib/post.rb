class Post
  attr_accessor :title
  attr_reader :author
  
  @@all = []
  
  def initialize(title)
    @title = title
    save
  end
  
  def author=(author)
    @author = author
    author.add_post(self) unless author.posts.include?(self)
  end
  
  def author_name
    @author.name unless @author == nil
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
end