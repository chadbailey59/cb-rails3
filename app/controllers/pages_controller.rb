class PagesController < ApplicationController
  def home
    render text: "Rails 3 Test App"
  end

  def post_test_get
  end

  def post_test_post
    @contents = params[:contents]
  end
end
