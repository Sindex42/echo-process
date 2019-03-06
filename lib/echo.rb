def echo(input)
  input
end

def input_is_exit?(input)
  input == 'exit'
end

def format_time_string(time = Time.new)
  time.strftime('%Y-%m-%d | %H:%M')
end


def run
  while true
    puts 'Say something:'
    input = gets.chomp

    break if input_is_exit?(input)
    puts "#{format_time_string} | You said: '#{echo(input)}'"
  end
  
  puts 'Goodbye!'
end

run
