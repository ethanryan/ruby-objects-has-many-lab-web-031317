class Post

  attr_accessor :title, :author

  def initialize(title)
    #binding.pry
    @title = title
    @author = author
  end

  def author_name
    #if_this_is_a_true_value ? then_the_result_is_this : else_it_is_this
    author == nil ? nil : self.author.name #self.author.name means an instance of the Post class knows the name of its author
  end

    # if author
    #   self.author.name
    # else
    #   nil
    # end #if else

end #end class
