module ApplicationHelper

  def sort_index(display_name, order_name)
    if request.fullpath.include?('desc')
      link_to display_name, sort: "#{order_name} desc"
    else
      link_to display_name, sort: order_name
    end
  end
end
