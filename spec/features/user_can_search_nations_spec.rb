require 'rails_helper'

feature 'user can search for nation members' do
  scenario 'user submits valid nation' do
    visit '/'

    select "Fire Nation", from: :nation
    click_on "Search For Members"

    expect(current_path).to eq(search_path)

    expect(page).to have_content("20 Members")
    expect(page).to have_css('.member', count: 20)

    within(first('.member')) do
      expect(page).to have_css('.name')
      expect(page).to have_css('.photo')
      expect(page).to have_css('.allies')
      expect(page).to have_css('.affiliation')
    end
  end
end