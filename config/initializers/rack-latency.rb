Rack::Latency.configure do |measure|
  measure.head "http://74.125.227.167", name: "google" # google.com ipv4
  measure.head "http://98.138.253.109", name: "yahoo" # yahoo.com ipv4
  measure.head "http://help.heroku.com"
  measure.head "http://health-reprort.herokuapp.com"
  measure.wait 4
end
