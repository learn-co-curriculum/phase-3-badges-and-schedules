# Badges and Schedules

## Instructions

In this lab you'll be learning how to iterate through an array and output the results in different ways. Your code will go in the `conference_badges.rb` file and you can run the test suite using the `rspec` command.


###`#badge_maker`
Let's run `rspec` and see what the test is looking for.
`expect(badge_maker(name)).to eq("Hello, my name is #{name}.")`

We want to pass a name into `badge_maker`, let's say "Matz". Our method should return a string saying "Hello, my name is Matz"

```ruby
  badge_maker("Matz")
  => "Hello, my name is Matz."
```

Your code should look like the following:

####`conference_badges.rb`
```ruby
def badge_maker(name)
  "Hello, my name is #{name}."
end
```
###`#batch_badge_creator`
Our next error: `expect(batch_badge_creator(attendees)).to eq(badges)`

It looks like we need a `batch_badge_creator` method that takes in an `attendees` array.

First lets build our array:
`attendees = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]`
Now we can iterate through our attendees, let's build that out.

####`Using .each`
```ruby
def batch_badge_creator(attendees)
  sentences = []
  attendees.each do |attendee|
    sentences << "Hello, my name is #{attendee}."
  end
  sentences
end
```
####`Using .map`
```ruby
def batch_badge_creator(attendees)
  attendees.map do |attendee|
    "Hello, my name is #{attendee}."
  end
end
```
Here we are using the `map` method, which you can read about <a href="http://ruby-doc.org/core-2.2.0/Array.html#method-i-map">here</a>. The `map` method returns a new array of elements, unlike `each` where you have to set an empty array and then explicitly return that array. You may also use `collect`, since it is the same method as `map`.

###`#assign_rooms`
Next error: `expect(assign_rooms(attendees)).to eq(room_assignments)`
Here we need an `assign_rooms` method that takes in our `attendees` array again. This time the output should give us the attendees room assignments.

```ruby
def assign_rooms(attendees)
  attendees.each_with_index.map do |attendee, index|
    "Hello, #{attendee}! You'll be assigned to room #{index+1}!"
  end
end
```
Here we are using `each_with_index`, which you can read more about <a href="http://ruby-doc.org/core-2.2.2/Enumerable.html#method-i-each_with_index">here</a>. This method iterates like a normal `each` method, but gives you access to the index of each element as the name implies. In our case, we are using that index and incrementing it by 1 to use for our room assignments. Since the first element in the attendees has an index of 0, we have to increment it with + 1. Otherwise, the first room assignment would be 0.

####`#printer`

Final
Error: `should puts the list of badges and room_assignments`

Our `#printer` method is going to use `#batch_badge_creator` and `#assign_rooms` methods to output our final messages.

```ruby
def printer(attendees)
  batch_badge_creator(attendees).each do |badge|
    puts badge
  end

  assign_rooms(attendees).each do |assignment|
    puts assignment
  end
end
```
This method will output the following:

```ruby
Hello, my name is Edsger.
Hello, my name is Ada.
Hello, my name is Charles.
Hello, my name is Alan.
Hello, my name is Grace.
Hello, my name is Linus.
Hello, Edsger! You'll be assigned to room 1!
Hello, Ada! You'll be assigned to room 2!
Hello, Charles! You'll be assigned to room 3!
Hello, Alan! You'll be assigned to room 4!
Hello, Grace! You'll be assigned to room 5!
Hello, Linus! You'll be assigned to room 6!
 => ["Hello, Edsger! You'll be assigned to room 1!", "Hello, Ada! You'll be assigned to room 2!", "Hello, Charles! You'll be assigned to room 3!", "Hello, Alan! You'll be assigned to room 4!", "Hello, Grace! You'll be assigned to room 5!", "Hello, Linus! You'll be assigned to room 6!"]
```
Notice the return value of this method is the output from our `assign_rooms` method. Ruby returns the last thing it evaluates, which in our case is `assign_rooms`, so that is our return value.
