module EventsHelper
  def create_event_btn
    out = ''
    if user_signed_in?
      out << link_to('New Event', new_event_path, class: 'me-3 py-2 text-dark text-decoration-none')
    end
    out.html_safe
  end
end
