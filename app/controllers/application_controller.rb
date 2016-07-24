class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def hello
    render html: "hello, world!"
  end

  def full_text(title)
    if title == nil or title.empty?
      return 'Ruby on Rails Tutorial Sample App'
    else
      return ['title', '|', 'Ruby on Rails Tutorial Sample App'].join
    end
  end
end
