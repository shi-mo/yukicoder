#!ruby

require 'scanf'

class ShortcutProblem
  Way = Struct.new('Way', :start, :terminal, :credits, :time)

  def self.load(io)
    num_cities = io.gets.scanf('%d\n')[0]
    credits    = io.gets.scanf('%d\n')[0]
    num_ways   = io.gets.scanf('%d\n')[0]
    ways = load_ways_from(io, num_ways)

    new(num_cities, credits, num_ways, ways)
  end

  def self.load_ways_from(io, num_ways)
    starts    = parse_int_array_from(io.gets)
    terminals = parse_int_array_from(io.gets)
    credits   = parse_int_array_from(io.gets)
    times     = parse_int_array_from(io.gets)

    ways = []
    num_ways.times do |i|
      ways << Way.new(starts[i], terminals[i], credits[i], times[i])
    end
    ways
  end

  def self.parse_int_array_from(line)
    line.chomp.split(/ /).map(&:to_i)
  end

  def initialize(num_cities, credits, num_ways, ways)
    @num_cities = num_cities
    @credits    = credits
    @num_ways   = num_ways

    @way_table  = create_way_table(ways)
  end
  attr_reader :num_cities, :credits, :num_ways

  NO_SOLUTION = -1
  def solve
    2.upto(num_cities) do |i|
      connect_ways_to(i)
    end

    ways_satisfy_condition = \
      @way_table[1][num_cities].select{|way| way.credits <= credits }

    return NO_SOLUTION if ways_satisfy_condition.empty?
    ways_satisfy_condition.map{|way| way.time }.sort!.first
  end

  def create_way_table(ways)
    table = Array.new(num_cities+1){ Array.new(num_cities+1){ [] } }
    ways.each do |way|
      table_entry = table[way.start][way.terminal]
      table_entry << way
    end
    table
  end

  def connect_ways_to(terminal)
    if 2 == terminal
      return
    end

    connected_ways = @way_table[1][terminal]
    2.upto(terminal-1) do |pivot|
       ways_before_pivot = @way_table[1][pivot]
       ways_after_pivot  = @way_table[pivot][terminal]

       ways_before_pivot.product(ways_after_pivot) do |way1, way2|
         connected_ways << connect_ways(1, terminal, way1, way2)
       end
    end
  end

  def connect_ways(start, terminal, way1, way2)
    credits = way1.credits + way2.credits
    time    = way1.time    + way2.time

    Way.new(start, terminal, credits, time)
  end
end

def main
  problem = ShortcutProblem.load(STDIN)
  puts problem.solve
end

main
