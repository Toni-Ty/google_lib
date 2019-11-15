class GoogleLib::Google_library

  @@reading_list = []

  def initialize(options)
    @@reading_list << self
  end


  def self.all
    @@reading_list
    end
end


# describe "@@all" do
#   it "is initialized as an empty array" do
#     all = Artist.class_variable_get(:@@all)
#
#     expect(all).to match_array([])
#   end
# end
#
# describe ".all" do
#   it "returns the class variable @@all" do
#     expect(GoogleLib::Google_library.all).to match_array([])
#
#     GoogleLib::Google_library.class_variable_set(:@@all, [reading_list)
#
#     expect(GoogleLib::Google_library.all).to match_array([reading_list])
#   end
# end

# cli_interface
#   describe '#get_user_input' do
#   it 'receives user input via the gets method' do
