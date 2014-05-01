Signal.trap 'TERM' do
  @term_time = Time.now
  loop do
    puts "I'm in the term loop! I started at #{@term_time}. The current time is #{Time.now}"
    sleep 0.1
  end
end

@start = Time.now
loop do
  puts "Welcome to the main loop! I started at #{@start}. The current time is #{Time.now}"
  sleep 1
end
