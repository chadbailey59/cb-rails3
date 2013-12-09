class PagesController < ApplicationController
  def home
    Rails.logger.info "printing an info line from the controller"
    render text: "hi!yo"
  end
end