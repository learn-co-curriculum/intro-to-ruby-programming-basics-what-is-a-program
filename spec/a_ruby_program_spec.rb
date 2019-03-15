describe "./a_ruby_program.rb" do

  it "does not raise an error" do
     expect { require './a_ruby_program.rb' }.not_to raise_error, "An error was raised when reading a_ruby_program.rb"
  end

end
