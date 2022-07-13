require 'rails_helper'

describe 'Edit Task' do
  describe 'As a visitor' do
    it 'can edit an existing task from index' do
      task1= Task.create!(title: "Wash windows", description: "With special towels")

      visit '/tasks'

      click_button 'Edit'

      expect(current_path).to eq "/tasks/#{task1.id}/edit"
      fill_in 'Title', with: 'Scrub windows'
      click_button 'Update'
      expect(current_path).to eq '/tasks'
      expect(page).to have_content('Scrub windows')
      expect(page).to_not have_content('Wash windows')
    end
  end
end
