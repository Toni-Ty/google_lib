describe 'CLI Interface' do
  it 'allows a user to search for books and save books via Google Books' do
    new_cli = GoogleLib::CLI_INTERFACE.new
    new_cli.call

    expect(GoogleLib::CLI_INTERFACE).to receive(:new).and_return(cli_interface)
    expect(cli_interface).to receive(:gets).and_return("get_user_book_input"(input))
  end

describe '#call' do
  it 'responds to a call method to start the CLI' do
    expect(new_cli).to respond_to(:call)
    allow($stdout).to receive(:puts)

    expect($stdout).to receive(:puts).with("Hello!  Welcome to Google Lib, please enter a book topic")
  end
end

  it 'loops while user input is not equal to exit'
    new_cli = GoogleLib::CLI_INTERFACE.new

    expect(new_cli).to receive(:gets).and_return("get_user_book_input(input)","search_google_books(input)","..exit")
    new_cli.call
  end

describe '#get_user_book_input' do
  it 'receives user input via the gets method and sets it equal to an instance variable called input' do
    new_cli = GoogleLib::CLI_INTERFACE.new

    expect(new_cli).to receive(:gets).and_return("@input")
  end
end

  describe '#search_google_books' do
    it 'receives user input, searches for books in Google Books, and returns title, author, and publisher'
      new_cli = GoogleLib::CLI_INTERFACE.new

      expect("boats").to eq.and_return("Boat Book", "Gail Gibbons", "Holiday House")
  end
end
  describe '#save_book_title' do
    it 'saves users book title selections'
      new_cli = GoogleLib::CLI_INTERFACE.new

      allow($stdout).to receive(:puts)

      expect($stdout).to receive(:puts).and_return("If you would like to save a book to your reading list, please type the title of the book you'd like to save.")
      expect(@input("Boat Book")).to eq.(book.title)
  end
end
  describe '#reading_list_options' do
    it 'allows user to enter a new book search, see reading list, or exit'
    new_cli = GoogleLib::CLI_INTERFACE.new

    allow($stdout).to receive(:puts)

    expect($stdout).to receive(:puts).and_return("Would you like to enter a new book topic to search?")
    expect($stdout).to receive(:puts).and_return("If so, please type [Y]...Or type [see list] for your reading list...Or type [exit] to leave.")

    expect(@input("Y")).to eq.and_return("Hello!  Welcome to Google Lib, please enter a book topic")
    expect(@input("see list")).to eq.and_return("Boat Book", "Boats Board Book", "Building Strip-Planked Boats")
    expect(@input("exit")).to eq.and_return("exit")
    expect(@input("xyzzzz")).to eq.and_return("Im sorry please enter a valid response")
    end
  end
end
