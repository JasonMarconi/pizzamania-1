module ApplicationHelper
  def convert_to_formatted_datetime(timestamp)
    timestamp.strftime("%Y-%m-%d %l:%M %p")
  end
end
