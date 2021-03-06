require_relative 'post'

class Author
  attr_accessor :name, :posts

  @@post_count = 0

  def initialize(name)
    @name, @posts = name, []
  end

  def add_post(post)
    posts << post 
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    add_post(new_post)
  end

  def self.post_count
    @@post_count
  end
end