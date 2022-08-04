# frozen_string_literal: true

module ApplicationHelper
  BASE_TITLE = 'Insect Food'

  def full_title(page_title)
    page_title.blank? ? BASE_TITLE : "#{BASE_TITLE} | #{page_title}"
  end
end
