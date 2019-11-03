class GoogleLib::Google_library

  attr_accessor :authors, :titles, :publisher

  @@all_books = []


  def initialize
    @authors = authors
    @titles = titles
    @publishers = publisher
    @@all_books << self
  end

  #all saved books
  def self.all
    @@all_books
  end


end
