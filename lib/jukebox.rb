#puts help message
def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

#lists all songs available to play
def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i + 1}. #{song}"
  end
end

#lets user pick song to play
def play(songs)
  puts "Please enter a song name or number: "
  choice = gets.strip
  if choice.length == 1 
    if choice.to_i > 0 && choice.to_i < 10
      puts "Playing #{songs[choice.to_i - 1]}"
    end
  elsif songs.include? choice 
    puts "Playing #{choice}"
  else
    puts "Invalid input, please try again"
  end
end

#puts exit message
def exit_jukebox
  puts "Goodbye"
end

#runs program
def run(songs)
  choice = ""
  while choice != "exit" do
    puts "Please enter a command:"
    choice = gets.strip
    case choice
      when "help"
        help
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "exit"
        exit_jukebox
    end
  end
end



