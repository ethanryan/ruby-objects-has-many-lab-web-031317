class Author
  attr_accessor :name, :posts, :author, :title

  @@post_count = 0 #double @@ makes this a class variable, this counter is set to 0

  def initialize(name)
    #binding.pry
    @name = name
    @author = author
    @posts = []
  end

  def add_post(post)
    posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(post_title)   #takes in an argument of a post_title,
    post_title = Post.new(post_title) #creates a new post with it
    add_post(post_title)             #and associates the post and author (via add_post method)
  end

  def self.post_count
    @@post_count
  end
end
