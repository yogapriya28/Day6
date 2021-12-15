puts ".....................exercise 35................"

def gold_room
  puts "This room is full of gold.  How much do you take?"

  print "> "
  choice = $stdin.gets.chomp

  # this line has a bug, so fix it
  if choice.include?("0") || choice.include?("1")
    how_much = choice.to_i
  else
    dead("Man, learn to type a number.")
  end

  if how_much < 50
    puts "Nice, you're not greedy, you win!"
    exit(0)
  else
    dead("You greedy bastard!")
  end
end


def bear_room
  puts "There is a bear here."
  puts "The bear has a bunch of honey."
  puts "The fat bear is in front of another door."
  puts "How are you going to move the bear?"
  bear_moved = false

  while true
    print "> "
    choice = $stdin.gets.chomp

    if choice == "take honey"
      dead("The bear looks at you then slaps your face off.")
    elsif choice == "taunt bear" && !bear_moved
      puts "The bear has moved from the door. You can go through it now."
      bear_moved = true
    elsif choice == "taunt bear" && bear_moved
      dead("The bear gets pissed off and chews your leg off.")
    elsif choice == "open door" && bear_moved
      gold_room
    else
      puts "I got no idea what that means."
    end
  end
end


def cthulhu_room
  puts "Here you see the great evil Cthulhu."
  puts "He, it, whatever stares at you and you go insane."
  puts "Do you flee for your life or eat your head?"

  print "> "
  choice = $stdin.gets.chomp

  if choice.include? "flee"
    start
  elsif choice.include? "head"
    dead("Well that was tasty!")
  else
    cthulhu_room
  end
end


def dead(why)
  puts why, "Good job!"
  exit(0)
end

def start
  puts "You are in a dark room."
  puts "There is a door to your right and left."
  puts "Which one do you take?"

  print "> "
  choice = $stdin.gets.chomp

  if choice == "left"
    bear_room
  elsif choice == "right"
    cthulhu_room
  else
    dead("You stumble around the room until you starve.")
  end
end

#start    # remove  (start) to execute next exercise
puts ".....................exercise 38................"
lines = "now im learning ruby programming language"
how=lines.split(' ')
moreline = ["after", "completting", "this" ,"i" ",will" ,"prepare" ",notes"]
while how.length!=9
  n = moreline.pop
  puts "last: #{n}"
  how.push(n)
  puts "finally#{how}"
end
puts "how is #{how}"

puts how[1]
puts how[-1]
puts how.pop()
puts how.join(' ')
puts how[3...5].join("#")
puts ".....................exercise 39................"
d={
  'name'=>'N',
  'age'=>'A',
  'height'=>'HE'
}

fd={
  'N'=>'yoga',
  'A'=>'21'
 }

   fd['HE']='7'


  puts"......................."
  puts "#{fd['N']}"
  puts "#{fd['A']}"
puts"............."
puts "#{ d['name']}"
puts"#{fd[d['age']]}"
puts"............."
fd.each do|f,ab|
  puts "#{ab},#{f}"
end

d.each do|c,a|
  puts "#{a},and #{c}"
end
puts"........."
f=d['hit']
if !f
  puts "hii"
end
n=fd['h']
n||='do'
puts "#{n}"
puts '...............Exercise 40...............'

class Song

  def initialize(lyrics)
    @lyrics = lyrics
  end

  def sing_me_a_song()
    @lyrics.each {|line| puts line }
  end
end

happy_bday = Song.new(["Happy birthday to you",
           "I don't want to get sued",
           "So I'll stop right there"])

bulls_on_parade = Song.new(["They rally around tha family",
            "With pockets full of shells"])

happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()
