# Add your code here
def help
puts  "I accept the following commands:"
puts  "- help : displays this help message"
puts  "- list : displays a list of songs you can play"
puts  "- play : lets you choose a song to play"
puts  "- exit : exits this program"
end

def list(songs)
  index = 1 
  songs.each do |song|
    puts "#{index}. #{song}"
    index += 1 
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user = gets.strip
  if user.to_i >= 1 && user.to_i <= songs.length
    puts "Playing #{songs[user.to_i - 1]}"
  elsif songs.include?(user)
    puts "Playing  #{songs.find{|song| song == user}}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  while true do
    puts "Please enter a command:"
    response = gets.chomp
    if response == "help"
      help
    elsif response == "list"
      list(songs)
    elsif response == "play"
      play(songs)
    elsif response == "exit"
      exit_jukebox
      break 
    else
      puts "Invalid input"
    end
  end
end
  