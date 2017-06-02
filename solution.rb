# Please copy/paste all three classes into this file to submit your solution!
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

end

class Rating
  attr_accessor :score
  attr_reader :viewer, :movie
@@all = []

  def initialize(movie, viewer, score)
    @movie = movie
    @viewer = viewer
    @score = score
    @@all << self
  end

def self.all
  @@all
end


end

class Movie
  attr_accessor :title
  @@all = []

  def initialize(title)
    self.title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_title(movie_name)
    self.all.select {|movie| movie.title.downcase == movie_name.downcase}
  end

  def ratings
    Rating.all.select {|rating| rating.movie == self}
  end

  def viewers
    self.ratings.map {|rating| rating.viewer}
  end

  def average_rating
    ary = self.ratings.select {|rating| rating.score}
    ary.average
  end
end
