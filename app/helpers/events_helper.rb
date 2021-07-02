# rubocop:disable Layout/LineLength, Layout/EndOfLine
module EventsHelper
  def create_event_btn
    out = ''
    out << link_to('New Event', new_event_path, class: 'me-3 py-2 text-dark text-decoration-none') if user_signed_in?
    out.html_safe
  end

  def profile_btn
    return render partial: 'events/profile' if user_signed_in?
  end
end
# rubocop:enable Layout/LineLength, Layout/EndOfLine
