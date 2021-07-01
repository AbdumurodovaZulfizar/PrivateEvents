require 'rails_helper'

RSpec.describe 'Registrations', type: :feature do
  before :each do
    @user = User.create(name: 'creator', email: 'test@test.com', password: '123456', password_confirmation: '123456')
  end

  it 'should show Sign Up page' do

    visit new_user_registration_path
    fill_in 'name', with: 'creator'
    fill_in 'email', with: @user.email
    fill_in 'password', with: @user.password
    fill_in 'password_confirmation', with: @user.password_confirmation
    click_button 'signup'

    expect(page).to have_content('Sign Up')
  end

  it 'should root_path after log in' do
    visit new_user_session_path
    fill_in 'email', with: @user.name
    fill_in 'password', with: @user.password
    click_button 'Log in'

    expect(page).to have_text('Personal Events')
  end
end