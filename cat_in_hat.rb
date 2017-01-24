require "pry"

too_many_cats = Array.new(100, true)

(1..100).each do |i|
  (0..99).each do |x|
    if x % i == 0
      too_many_cats[x] = !too_many_cats[x]
    end
  end
end

too_many_cats.each_with_index do |cat, i|
  if cat
    puts "Cat #{i} has a hat"
  else
    puts "Cat #{i} does not have a hat"
  end
end
