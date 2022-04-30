module GistsHelper
  def gist_url(url)
    link_to 'Gist', url, target: '_blank', rel: 'nofollow noopener'
  end
end
