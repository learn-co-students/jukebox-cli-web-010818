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
  songs.each do |index, song|
    puts "#{index}+1 #{song}"
  end
end


def play(songs)
puts "Please enter a song name or number:"
input = gets.chomp
num = []
songs.each_with_index do |song, index|
  num.push(index.to_s)
end
if songs.include? input
  puts "Playing #{input}"
  elsif num.include? input
  puts "Playing #{songs[(input.to_i-1)]}"
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
input1 = gets.chomp
if input1 == "list"
  list
elsif input1 == "play"
  play
elsif input1 == "exit"
  exit_jukebox
end
end
