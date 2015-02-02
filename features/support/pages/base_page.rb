class Base
  attr_reader :driver

  BASE_URL = "http://www.uksa.eu"
  BODY     = { tag_name: "body" }

  def initialize(driver)
    @driver = driver
  end

  def visit(url='/')
    driver.get BASE_URL + url
  end

  def find(locator)
    driver.find_element locator
  end

  def clear(locator)
    find(locator).clear
  end

  def type(locator, input)
    find(locator).send_keys input
  end

  def type_last(locator, input)
    driver.find_elements(locator).last.send_keys input
  end

  def click_on(locator)
    find(locator).click
  end

  def displayed?(locator)
    begin
      driver.find_element(locator).displayed?
      true
    rescue Selenium::WebDriver::Error::NoSuchElementError
      false
    end
  end

  def text_of(locator)
    find(locator).text
  end

  def title
    driver.title
  end

  def verify_page(text)
    wait_for { displayed?(BODY) }
    text_of(BODY).include?(text).should == true
  end

  def wait_for(seconds=10)
    Selenium::WebDriver::Wait.new(:timeout => seconds).until { yield }
  end

end
