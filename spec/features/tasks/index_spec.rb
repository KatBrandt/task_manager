require 'rails_helper'

describe 'Task Index', type: :feature do
  describe 'As a visitor' do

    describe 'when I visit the index and click delete' do
      it 'deletes that artist' do
        task1= Task.create!(title: "Wash windows", description: "With special towels")

        visit '/tasks'
        click_button 'Delete'

        expect(current_path).to eq '/tasks'
        expect(page).to_not have_content(task1.title)
        expect(page).to_not have_content(task1.description)
      end
    end
  end
end
