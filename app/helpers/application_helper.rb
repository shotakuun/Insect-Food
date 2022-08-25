# frozen_string_literal: true

module ApplicationHelper
  require 'uri'

  def text_url_to_link(text)
    require 'uri'
    uri_reg = URI::DEFAULT_PARSER.make_regexp(%w[http https])
    text.gsub(uri_reg) { "<a href='#{Regexp.last_match(0)}' target='_blank'\>#{Regexp.last_match(0)}</a>" }
  end

  BASE_TITLE = Settings.static.title

  def full_title(page_title)
    page_title.blank? ? BASE_TITLE : "#{BASE_TITLE} | #{page_title}"
  end

  def default_meta_tags
    {
      site: 'InsectFood',
      title: 'あなたにとって最高のパートナー(昆虫)を見つけよう!',
      charset: 'utf-8',
      description: '食べれる昆虫を検索・診断の結果で自分に合った昆虫を探せるサービス',
      keywords: '昆虫,昆虫食,ゲテモノ',
      canonical: request.original_url, # 優先されるurl
      icon: [
        { href: image_url('favicon.ico') },
        { href: image_url('apple-touch-icon.png'),
          rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' }
      ],
      og: {
        site_name: :site,
        title: :title,
        description: :description,
        type: 'website',
        url: request.original_url,
        image: image_url('ogp_image.png'),
        locale: 'ja_JP'
      },
      twitter: {
        card: 'summary_large_image',
        site: '@ippi618',
        image: image_url('ogp_image.png')
      }
    }
  end
end
