module PostsHelper
  def post_status(post)
    if post.published?
      "Published #{time_ago_in_words(post.published_at)} ago"
    else
      '—'
    end
  end

  def publish_post_link(post)
    link_text = post.published? ? 'Unpublish' : 'Publish'

    link_to link_text, post_path(post, format: 'json'),
      class: 'btn btn-default btn-xs publish-post',
      data: { published: !post.published? }
  end

end


