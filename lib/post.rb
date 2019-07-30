class Post
  attr_accessor :title
  attr_reader :artist
  
  @@all = []
  
  def initialize(title)
    @title = title
    save
  end
  
  def author=(author)
    @author = author
    author.add_post(self) unless author.posts.include?(self)
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
end