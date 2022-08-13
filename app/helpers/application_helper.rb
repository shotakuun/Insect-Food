# frozen_string_literal: true

module ApplicationHelper
  require "uri"

  def text_url_to_link(text)
    require "uri"
    uri_reg = URI.regexp(%w[http https])
    return text.gsub(uri_reg) { "<a href='#{$&}' target='_blank'\>#{$&}</a>" }
  end

  BASE_TITLE = Settings.static.title

  def full_title(page_title)
    page_title.blank? ? BASE_TITLE : "#{BASE_TITLE} | #{page_title}"
  end
end
