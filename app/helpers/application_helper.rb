module ApplicationHelper
  def current_year
    "#{Time.current.year}"
  end

  def github_url(author, repo)
    link_to repo.capitalize, "https://github.com/#{author}/#{repo}"
  end

  def alert_flash_message
    content_tag :p, flash[:alert], class: 'flash alert'
  end
end
