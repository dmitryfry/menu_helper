module ApplicationHelper

  def menu
    [
      menu_item('main', root_path),
      menu_item('about', about_path),
      menu_item('gallery', gallery_path),
      menu_item('prices', prices_path),
      menu_item('articles', articles_path),
      menu_item('contacts', contacts_path),
    ].join.html_safe
  end

  def menu_item(text, path)
    options = current_page?(path) ? { class: "active" } : {}
      content_tag(:li, options) do
        link_to text, path
      end
  end

end
