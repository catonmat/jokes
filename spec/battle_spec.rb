require_relative "../battle"

describe "#battle" do
  it "should return a string value" do
    actual = battle
    expect(actual.class).to eq("".class)
  end

  it "should return 'The Zilla Wins!' or 'The Duck Prevails!' depending on who won the battle." do
    # ["The Zilla Wins!", "The Duck Prevails!"].should include(battle)
    actual = battle
    expect(actual).to eq("The Zilla Wins!").or eq("The Duck Prevails!")
  end

  it "There should be a 50-50 likelihood of either Kangazilal or the Yellow Duck winning" do
    actual_array = []
    100.times { actual_array << battle }
    expect(actual_array.count("The Zilla Wins!")).to be >= (25)
    expect(actual_array.count("The Zilla Wins!")).to be >= (25)
  end
end
