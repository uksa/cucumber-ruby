class BasePage
  attr_reader :driver

  BASE_URL = "http://www.uksa-testing.co.uk"
  BODY     = { tag_name: "body" }
  FOOTER   = { css: '.footer' }
  H3_TAG   = { css: '.container>h3'}

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

  def wait_for_title(text)
    unless title.include?(text)
      Timeout::timeout(5) do
        sleep 1
      end
    end
  end

  def verify_page(text)
    wait_for_title(text)
    title.include?(text).should == true
  end

  def wait_for(seconds=10)
    Selenium::WebDriver::Wait.new(:timeout => seconds).until { yield }
  end

  def goto(page)
    visit(page)
  end

  def text_on_page?(text)
    text_of(BODY).include?(text)
  end


end
