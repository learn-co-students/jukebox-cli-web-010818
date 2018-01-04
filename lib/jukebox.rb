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
  songs.each_with_index do |song, idx|
    number = (idx + 1).to_s
    puts "#{number}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song = gets.chomp

  if songs.include?(song)
    puts "Playing #{song}"
  elsif (1..songs.length).include?(song.to_i)
    puts "Playing " + songs[song.to_i - 1]
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  command = gets.chomp

  if command == "help"
    help
  elsif command == "play"
    play(songs)
  elsif command == "list"
    list
  elsif command == "exit"
    exit_jukebox
  else
    run(songs)
  end

end
