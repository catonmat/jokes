# SPOILER, BOO!

def battle
  kanga = (1..100).to_a.sample(1)
  duck = (1..100).to_a.sample(1)
  return "Its A Tie!" if kanga[0] == duck[0]
  kanga[0] > duck[0] ? "The Zilla Wins!" : "The Duck Prevails!"
end

p battle
