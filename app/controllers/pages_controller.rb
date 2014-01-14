class PagesController < ApplicationController
  def home
    render text: "Rails 3 Test App"
  end
end