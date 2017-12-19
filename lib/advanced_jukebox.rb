#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => 'Users/mattjackson/Development/code/jukebox-cli-web-010818/audio/Emerald-Park/01.mp3',
"LiberTeens" => 'Users/mattjackson/Development/code/jukebox-cli/audio/Emerald-Park/02.mp3',
"Hamburg" =>  'Users/mattjackson/Development/code/jukebox-cli/audio/Emerald-Park/03.mp3',
"Guiding Light" => 'Users/mattjackson/Development/code/jukebox-cli/audio/Emerald-Park/04.mp3',
"Wolf" => 'Users/mattjackson/Development/code/jukebox-cli/audio/Emerald-Park/05.mp3',
"Blue" => 'Users/mattjackson/Development/code/jukebox-cli/audio/Emerald-Park/06.mp3',
"Graduation Failed" => 'Users/mattjackson/Development/code/jukebox-cli/audio/Emerald-Park/07.mp3'
}


def help
  puts "I accept the following commands:"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
  my_songs.collect do |song, location|
    puts song
  end
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  puts "Please enter a song name:"
  answer = gets.chomp
  if my_songs.keys.include?(answer)
    system("open #{my_songs[answer]}")
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  #this method is the same as in jukebox.rb
  puts "Goodbye"
end

def run(my_songs, command = "help")
  if command == "help"
    help
    puts "Please enter a command:"
    command = gets.chomp
    run(my_songs, command)
  elsif command == "list"
    list(my_songs)
    puts "Please enter a command:"
    command = gets.chomp
    run(my_songs, command)
  elsif command == "play"
    play(my_songs)
    puts "Please enter a command:"
    command = gets.chomp
    run(my_songs, command)
  elsif command == "exit"
    return exit_jukebox
  else
    puts "Please enter a command:"
    command = gets.chomp
    run(my_songs, command)
  end
end
