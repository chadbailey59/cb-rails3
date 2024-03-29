worker_processes Integer(ENV["WEB_CONCURRENCY"] || 3)
timeout 15
preload_app true

before_fork do |server, worker|
  Signal.trap 'TERM' do
    #puts 'Unicorn master intercepting TERM and sending myself QUIT instead'
    #Process.kill 'QUIT', Process.pid
    @start = Time.now
    puts "received SIGTERM at #{@start}"
    loop do
      puts "#{Time.now - @start}s since SIGTERM"
      sleep 0.1
    end
  end

  defined?(ActiveRecord::Base) and
    ActiveRecord::Base.connection.disconnect!
end

after_fork do |server, worker|
  Signal.trap 'TERM' do
    puts 'Unicorn worker intercepting TERM and doing nothing. Wait for master to send QUIT'
  end

  defined?(ActiveRecord::Base) and
    ActiveRecord::Base.establish_connection
end
