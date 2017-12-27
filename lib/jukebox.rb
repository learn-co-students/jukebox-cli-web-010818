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

=begin
  help command
  output instructions user help instructions.

  list command
  output a list of songs.

  play command
  ask user to input a song name OR number.
  output song. If song doesn't exist,

  exit command
  jukebox should say goodbye.
  program shuts down.
=end

def help
  puts <<-HEREDOC
    I accept the following commands:
    - help : displays this help message
    - list : displays a list of songs you can play
    - play : lets you choose a song to play
    - exit : exits this program
  HEREDOC
end

def list(songs_array)
  songs_array.each_with_index do |val, index|
    puts "#{index + 1}. #{val}"
  end
end


def play(songs_array)
  puts "Please enter a song name or number:"
  input = gets.chomp

  if songs_array.include?(input)
    puts "Playing #{input}"
  elsif (1..songs_array.length).include?(input.to_i)
    puts "Playig #{songs_array[input.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end

end



def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  #help
  input = ""
  while input
    puts "Please enter a command:"
    input = gets.chomp
    case input
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
      break
    else
      help
    end
  end
end
