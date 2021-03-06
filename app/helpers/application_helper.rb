module ApplicationHelper
  def current_year
    "#{Time.current.year}"
  end

  def github_url(author, repo)
    link_to repo.capitalize, "https://github.com/#{author}/#{repo}", target: '_blank', rel: 'nofollow noopener'
  end

  def flash_message(type)
    content_tag :p, flash[type].html_safe, class: "flash #{type}" if flash[type]
  end
end
