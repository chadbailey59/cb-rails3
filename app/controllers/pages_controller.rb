class PagesController < ApplicationController
  def home
    render text: "Rails 3 Test App. Thread count is #{Thread.list.count}"
  end

  def db
    ActiveRecord::Base.connection.execute("SELECT 1;").to_s
    render text: ActiveRecord::Base.connection_pool.connections.count
  end

  def logspam
    (0..params[:count].to_i).each do |i|
      puts "log spam #{i}"
    end

    render text: "spammed #{params[:count]} log lines"
  end


  def post_test_get
  end

  def post_test_post
    @contents = params[:contents]
  end

  def slow
    time = params[:time].to_i
    time = 1 if time == 0
    sleep time
    render text: "Slept for #{time} second(s)"
  end
end
