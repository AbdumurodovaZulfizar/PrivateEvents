# rubocop:disable Layout/LineLength, Layout/EndOfLine
module RegistrationsHelper
  def current_user_btn
    out = ''
    if user_signed_in?
      out << link_to(current_user.name, edit_user_registration_path, class: 'me-3 py-2 text-dark text-decoration-none')
    end
    out.html_safe
  end

  def sign_out_btn
    out = ''
    if user_signed_in?
      out << link_to('Sign Out', destroy_user_session_path, method: :delete, class: 'me-3 py-2 text-dark text-decoration-none')
    end
    out.html_safe
  end

  def sign_up_btn
    out = ''
    unless user_signed_in?
      out << link_to('Sign Up', new_user_registration_path, class: 'me-3 py-2 text-dark text-decoration-none')
    end
    out.html_safe
  end

  def log_in_btn
    out = ''
    unless user_signed_in?
      out << link_to('Log In', new_user_session_path, class: 'me-3 py-2 text-dark text-decoration-none')
    end
    out.html_safe
  end
end
# rubocop:enable Layout/LineLength, Layout/EndOfLine
