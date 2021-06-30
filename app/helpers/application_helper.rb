module ApplicationHelper
  def alert_btn
    return render partial: 'layouts/alerts' if notice
  end
end
