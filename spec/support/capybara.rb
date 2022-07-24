# frozen_string_literal: true

RSpec.configure do |config|
  config.before(:each, type: :system) do
    driven_by(:rack_test)
    # driven_by(:selenium_chrome)
  end
end
