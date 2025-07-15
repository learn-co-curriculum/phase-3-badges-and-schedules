def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  attendees.map { |name| badge_maker(name) }
end

def assign_rooms(attendees)
  room = 0
  attendees.map do |name|
    room += 1
    "Hello, #{name}! You'll be assigned to room #{room}!"
  end
end

def printer(attendees)
  badges = batch_badge_creator(attendees)
  badges.each { |badge| puts badge }
  rooms = assign_rooms(attendees)
  rooms.each { |room| puts room }
end
