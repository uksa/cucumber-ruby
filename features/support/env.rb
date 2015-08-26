require 'cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'securerandom'
require 'faker'
require 'timeout'

Before do
  @driver = Selenium::WebDriver.for :firefox
  @driver.manage.timeouts.implicit_wait = 30
end

After do
  @driver.quit
end

Before do
  caps = Selenium::WebDriver::Remote::Capabilities.firefox
  caps.version = "5"
  caps.platform = :XP
    caps[:name] = "UKSA-Testing #{Time.now}"

  begin
    @driver = Selenium::WebDriver.for(
        :remote,
        :url => "http://samtreweek:6c4edd71-0175-4886-b225-324e3cdc03ce@ondemand.saucelabs.com:80/wd/hub",
        :desired_capabilities => caps)

  rescue
       @connection_fail = true
  end

end




