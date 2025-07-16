def badge_maker name
  "Hello, my name is #{name}."
end

def batch_badge_creator batch
  batch.map { |name| badge_maker name}
end

def assign_rooms names
  names.map.with_index { |name, index| "Hello, #{name}! You'll be assigned to room #{index + 1}!"}
end

def printer names
  (batch_badge_creator names).each { |badge| puts badge}
  (assign_rooms names).each { |assignment| puts assignment}
end
