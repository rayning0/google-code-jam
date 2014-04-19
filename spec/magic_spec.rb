require 'spec_helper'

describe Magic do
  let(:cards) {Magic.new("./data/magic.txt")}
  let(:cards2) {Magic.new("./data/A-small-practice.txt")}

  it "copies a magician by trying to guess card chosen by volunteer" do
    expect(cards.guess).to eq([7, "Bad magician!", "Volunteer cheated!"])
    expect(cards2.guess).to eq(["Bad magician!", "Bad magician!", "Volunteer cheated!", "Volunteer cheated!", 14, 10, 6, 6, 10, "Bad magician!", "Volunteer cheated!", "Bad magician!", 10, "Bad magician!", "Bad magician!", "Bad magician!", 10, 1, "Volunteer cheated!", "Bad magician!", "Volunteer cheated!", "Bad magician!", "Bad magician!", 9, "Bad magician!", "Bad magician!", "Bad magician!", 5, "Volunteer cheated!", 11, 3, 1, "Volunteer cheated!", "Volunteer cheated!", "Volunteer cheated!", 12, "Volunteer cheated!", "Volunteer cheated!", "Volunteer cheated!", 11, 15, "Volunteer cheated!", 10, 4, "Volunteer cheated!", "Volunteer cheated!", 15, 5, "Volunteer cheated!", "Bad magician!", "Volunteer cheated!", 5, "Volunteer cheated!", 16, "Bad magician!", 9, "Volunteer cheated!", "Volunteer cheated!", 13, "Bad magician!", "Volunteer cheated!", 6, "Volunteer cheated!", "Volunteer cheated!", "Bad magician!", "Bad magician!", "Bad magician!", 8, 16, "Volunteer cheated!", "Bad magician!", 7, 7, "Bad magician!", 7, 7, "Bad magician!", "Bad magician!", "Volunteer cheated!", "Volunteer cheated!", 1, 16, "Bad magician!", 6, "Volunteer cheated!", "Bad magician!", "Bad magician!", 2, "Volunteer cheated!", 5, 16, 3, "Volunteer cheated!", "Bad magician!", "Volunteer cheated!", 12, 7, "Bad magician!", "Bad magician!", "Volunteer cheated!"])
  end
end