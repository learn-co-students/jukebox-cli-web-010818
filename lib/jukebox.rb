require 'pry'

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

 puts "I accept the following commands:"
 puts "- help : displays this help message"
 puts "- list : displays a list of songs you can play"
 puts "- play : lets you choose a song to play"
 puts "- exit : exits this program"

end

def play(songs)
  puts "Please enter a song name or number:"
  userInput = gets.chomp

      if songs.include?(userInput)
        puts "Playing #{userInput}"
      elsif userInput.to_i > 0 && userInput.to_i < songs.size
      puts "Playing #{songs[userInput.to_i-1]}"
      else
        puts "Invalid input, please try again."
      end

end

def list(songs)

    songs.collect.with_index do |songs, index|
      puts "#{index+1}. #{songs}"
    end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command:"
  input = gets.chomp

    case input
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      list(songs)
      play(songs)
    when "exit"
      exit_jukebox
    end

end
