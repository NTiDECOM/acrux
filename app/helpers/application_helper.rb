module ApplicationHelper
  def is_active?(controller_name)
    'active' if params[:controller] == controller_name
  end
end
