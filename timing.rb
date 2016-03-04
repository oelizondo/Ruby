class Timing
  def self.time(arr)
    start_time = Time.now
    arr.sort
    end_time = Time.now
    puts end_time - start_time
  end
end

a = Array.new(100_000_000, (rand * 100).floor)

#b = Array.new(1_000_000, (rand * 100).floor)

Timing.time(a)
#Timing.time(b)