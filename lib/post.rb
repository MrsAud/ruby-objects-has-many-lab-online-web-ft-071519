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
    Author.add_post(self) unless Author.posts.include?(self)
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
end