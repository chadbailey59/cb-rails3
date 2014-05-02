Signal.trap 'TERM' do
  @term_time = Time.now
  puts "Received SIGTERM at #{@term_time}"
  loop do
    puts "#{Time.now - @term_time}s since SIGTERM"
    sleep 0.1
  end
end

@start = Time.now
puts "Started main loop at #{@start}"
loop do
  puts "Main loop: Current time is #{Time.now}"
  sleep 10
end
