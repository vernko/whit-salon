module ApplicationHelper
  def nav_items
    [
      {
        url: root_path,
        title: 'Home'
      },
      {
        url: about_path,
        title: 'About Whitney'
      },
      {
        url: contact_path,
        title: 'Contact'
      },
      {
        url: blogs_path,
        title: 'Blog'
      },
      {
        url: portfolios_path,
        title: 'Portfolio'
      },
      {
        url: services_path,
        title: 'Services'
      },
      {
        url: transformations_path,
        title: 'Transformations'
      },
    ]
  end

  def nav_helper style, tag_type
    nav_links = ''

    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style}'>#{item[:title]}</a></#{tag_type}>"
    end

    nav_links.html_safe
  end
end
