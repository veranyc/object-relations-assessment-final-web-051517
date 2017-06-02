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
# Build out the following methods on the Rating class
# X Rating.all
# X returns all of the ratings
# X Rating#viewer
# X returns the viewer for that given rating
# X Rating#movie
# X returns the movie for that given rating
