class GoogleLib::Google_library

  @@reading_list = []

  def initialize(options)
    @@reading_list << self
  end

    #class method holds reading list
  def self.all
    @@reading_list
    end
end
