module ApplicationHelper

  def markdown(text)
    renderer = Redcarpet::Render::HTML.new(hard_wrap: true, filter_html: true)
    options = {
      autolink: true,
      no_intra_emphasis: true,
      disable_indented_code_blocks: true,
      lax_html_blocks: true,
      strikethrough: true
    }
    Redcarpet::Markdown.new(renderer, options).render(text).html_safe
  end

end
