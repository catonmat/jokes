def battle
  kanga = (1..100).to_a.sample(1)
  yellow_duck = (1..100).to_a.sample(1)
  return "It's A Tie!" if kanga[0] == yellow_duck[0]
  kanga[0] > yellow_duck[0] ? "The Zilla Wins!" : "The Duck Prevails!"
end

p battle
