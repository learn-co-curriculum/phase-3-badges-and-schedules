def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(names)
  badges = names.map { |name| "Hello, my name is #{name}." }
end

def assign_rooms(speakers)
  room_assignments = speakers.each_with_index.map do |speaker, index|
    "Hello, #{speaker}! You'll be assigned to room #{index + 1}!"
  end
end

def printer(speakers)
  batch_badge_creator(speakers).each { |speaker| puts speaker }
  assign_rooms(speakers).each { |speaker| puts speaker}
end
