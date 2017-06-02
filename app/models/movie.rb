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


# Build out the following methods on the movie class
# X Movie.all
# X returns an array of all movies
# X Movie.find_by_title(title)
# X given a string of movie title, returns the first movie that matches
# X Movie#ratings
# X returns an array of all ratings for that movie
# X Movie#viewers
# X should return all of the viewers who have left ratings for that movie.
# X Movie#average_rating
# X should return the average of all of the scores for the ratings of that particular movie.
