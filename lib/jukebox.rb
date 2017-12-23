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
  help=<<-HELP
I accept the following commands:
- help : displays this message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program
HELP
  puts help
end

def list(songs)
  songs.each_with_index do |song,index|
    puts "#{index+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_selection=gets.chomp
  if (1..9).to_a.include?(user_selection.to_i)
    puts "Playing #{songs[user_selection.to_i-1]}"
  elsif songs.include?(user_selection)
    puts "Playing #{user_selection}"
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
  user_help_response=gets.chomp
  if user_help_response=="exit"
    exit_jukebox
  elsif user_help_response=="list"
    list(songs)
  elsif user_help_response=="play"
    play(songs)
  end
end
