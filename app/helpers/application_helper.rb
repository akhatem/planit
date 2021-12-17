module ApplicationHelper
  def is_active?(link_path)
    puts "link_path: #{link_path}"
    current_page?(link_path) ? 'ac' : ''
  end

  def is_active_link?(link_path)
    puts "link_path: #{link_path}"
    current_page?(link_path) ? 'active' : ''
  end
end
