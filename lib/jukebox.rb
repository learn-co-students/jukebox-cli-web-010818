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

# def say_hello (name)
#   "Hi #{name}!"
# end
# puts "Enter your name:"
# users_name = gets.chomp
# puts say_hello(users_name)

def help
  help_hsh = {
    'help' => 'displays this help message',
    'list' => 'displays a list of songs you can play',
    'play' => 'lets you choose a song to play',
    'exit' => 'exits this program',
  }
  puts "I accept the following commands:"
  help_hsh.each do |command, action|
    puts "- #{command} : #{action}"
  end
end

def list (songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play (songs)
  puts "Please enter a song name or number:"
  input = gets.chomp

  if input.length <= 2 && input.to_i < songs.length
    song = songs[input.to_i - 1]
    puts "Playing #{song}"
  elsif input.class == String && songs.include?(input)
    puts "Playing #{input}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts 'Goodbye'
end

def run (songs)
  command = nil
  while command != 'exit'
    puts "Please enter a command:"
    command = gets.chomp

    if command == 'help'
      help
    elsif command == 'play'
      play
    elsif command == 'list'
      list
    elsif command == 'exit'
      exit_jukebox
      break
    end
  end
end
