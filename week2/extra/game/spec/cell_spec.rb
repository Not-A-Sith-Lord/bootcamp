require "rspec"
require "rack/test"

require_relative("../lib/cell.rb")

#-----------------------------------

describe Cell do 

  describe '#regenerate' do
    it "regenerates a live from live cell if it has 2 neighbours" do
      cell1 = Cell.new(1, [0,0,0,0,0,0,1,1])
      expect(cell1.regenerate).to eq(1)
    end
  end

   describe '#regenerate' do
    it "regenerates a dead from live cell if less than 2 neighbours" do
      cell1 = Cell.new(1, [0,0,0,0,0,0,0,1])
      expect(cell1.regenerate).to eq(0)
    end
  end

   describe '#regenerate' do
    it "death from overpopulation" do
      cell1 = Cell.new(1, [0,0,0,0,1,1,1,1])
      expect(cell1.regenerate).to eq(0)
    end
  end

  describe '#regenerate' do
    it "dead zero neighbours stays dead" do
      cell1 = Cell.new(0, [0,0,0,0,0,0,1,1])
      expect(cell1.regenerate).to eq(0)
    end
  end

  describe '#regenerate' do
    it "dead three neighbours comes alive" do
      cell1 = Cell.new(1, [0,0,0,0,0,1,1,1])
      expect(cell1.regenerate).to eq(1)
    end
  end

  # write more tests to cover all cases

end
