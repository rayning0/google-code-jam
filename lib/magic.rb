# Solution to https://code.google.com/codejam/contest/2974486/dashboard

class Magic
  attr_reader :filename, :tests, :input
  attr_accessor :answer1, :answer2, :cards1, :cards2

  def initialize(filename)
    @answer1, @answer2 = [], []
    @filename = filename
    @input = read_file
    @tests = input.first.to_i
    @cards1 = Array.new(tests) {Array.new(4)} # array w/ tests rows & 4 cols
    @cards2 = Array.new(tests) {Array.new(4)}
    read_tests
  end

  def read_file
    IO.readlines(filename).map(&:chomp) # reads graph file as array
  end

  def read_tests
    i = 0
    tests.times do |test|
      i += 1
      answer1[test] = input[i].to_i - 1  # what row card is in
      4.times do |card_row|
        i += 1
        cards1[test][card_row] = input[i].split
      end

      i += 1
      answer2[test] = input[i].to_i - 1
      4.times do |card_row|
        i += 1
        cards2[test][card_row] = input[i].split
      end
    end
  end

  def guess
    result = []
    tests.times do |t|
      intersect = (cards1[t][answer1[t]] & cards2[t][answer2[t]]).map(&:to_i)
      case
      when intersect.size == 1
        result << intersect.first
      when intersect.size > 1
        result << "Bad magician!"
      else
        result << "Volunteer cheated!"
      end
    end

    File.open(filename[0..-5] + '_out.txt', 'a') do |f|
      result.each_with_index do |r, i|
        puts "Case ##{i + 1}: #{r}"
        f.puts("Case ##{i + 1}: #{r}")
      end
    end
    result
  end
end