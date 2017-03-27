require('capybara/rspec')
  require('./app')
  Capybara.app = Sinatra::Application
  set(:show_exceptions, false)

  describe('the Triangle APP', {:type => :feature}) do
    it('takes the user entry and returns the type of triangle') do
    visit('/')
    fill_in('side_a', :with => '10')
    fill_in('side_b', :with => '10')
    fill_in('side_c', :with => '8')

    click_button('Submit')
    expect(page).to have_content('isosceles')
    end
  end
