require "capybara/dsl"

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end
Capybara.current_driver = :selenium_chrome

module Vote
  include Capybara::DSL

  def vote_to(club)
    # サイトにアクセス
    visit "http://www.weider-jp.com/know/bukatsu/club?param=#{club[:p]}"
    sleep 10
    # モーダル表示
    find('#voteUnfinished').click
    sleep 1
    # チェックボックス
    check('check')
    sleep 1
    find('#voteButton').click
    sleep 30
  end

  def clear_cookie
    p 'clear_cookie'
    browser = Capybara.current_session.driver.browser
    if browser.respond_to?(:clear_cookies)
      # for Rack::MockSession
      browser.clear_cookies
    elsif browser.respond_to?(:manage) and browser.manage.respond_to?(:delete_all_cookies)
      # for Selenium::WebDriver
      browser.manage.delete_all_cookies
    else
      raise "Don't know how to clear cookies. Weird driver?"
    end
  end
end