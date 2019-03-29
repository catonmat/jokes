require_relative "../battle"

describe "#battle" do
  it "should return a string value" do
    actual = battle
    expect(actual.class).to eq("".class)
  end

  it "should return 'The Zilla Wins!' or 'The Duck Prevails!' depending on who won the battle." do
    ["The Zilla Wins!", "The Duck Prevails!", "It's A Tie!"].should include(battle)
    # expect(battle).to be_in(["The Zilla Wins!", "The Duck Prevails!", "It's A Tie!"])
  end

  it "should return 'It's A Tie!' when Kangazilla and the Yellow Duck draw" do
    actual = battle
    ["The Zilla Wins!", "The Duck Prevails!", "It's A Tie!"].should include(battle)
    #expect(battle).to be_in(["The Zilla Wins!", "The Duck Prevails!", "It's A Tie!"])
  end

  it "There should be a 50-50 likelihood of either Kangazilal or the Yellow Duck winning" do
    actual_array = []
    100.times { actual_array << battle }
    expect(actual_array.count("The Zilla Wins!")).to be >= (25)
  end
end
