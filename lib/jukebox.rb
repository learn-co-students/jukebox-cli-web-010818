songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
   puts "I accept the following commands:
 - help : displays this help message
 - list : displays a list of songs you can play
 - play : lets you choose a song to play
 - exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  answer = gets.chomp
  if answer.to_i <= songs.size && answer.to_i > 0
    puts "Playing #{songs[(answer.to_i - 1)]}"
  elsif songs.include?(answer)
    puts "Playing #{answer}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs, command = "help")
  if command == "help"
    help
    puts "Please enter a command:"
    command = gets.chomp
    run(songs, command)
  elsif command == "list"
    list(songs)
    puts "Please enter a command:"
    command = gets.chomp
    run(songs, command)
  elsif command == "play"
    play(songs)
    puts "Please enter a command:"
    command = gets.chomp
    run(songs, command)
  elsif command == "exit"
    return exit_jukebox
  else
    puts "Please enter a command:"
    command = gets.chomp
    run(songs, command)
  end
end
