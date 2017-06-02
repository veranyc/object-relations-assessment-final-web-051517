class Viewer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end


def self.all
  @@all
end

def self.find_by_name(name)
  self.all.select {|viewer| viewer.full_name.downcase == name.downcase}
end

def create_rating(movie, score)
  Rating.new(movie, self, score)
end

#alternative sandwich code for create_rating
# def create_rating
# new_review = Review.new(restaurant, content)
#     new_review.customer = self
#    #  self.reviews << new_review

# X Build the following methods on the viewer class
# X Viewer.all
# Xshould return all of the viewers
# X Viewer.find_by_name(name)
# X given a string of a full name, returns the first customer whose full name matches
# X Viewer#create_rating
# X given a score and a movie, creates a new Rating and associates it with that viewer and that movie
