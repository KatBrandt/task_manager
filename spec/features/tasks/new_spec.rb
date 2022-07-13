require 'rails_helper'

describe 'New Task', type: :feature do
  describe 'As a visitor' do
    describe 'When I click on New Task from the index page' do
      it 'can create a new task' do
        visit '/tasks'

        click_link 'Create New Task'

        expect(current_path).to eq '/tasks/new'

        fill_in 'Title', with: 'Dishes'
        fill_in 'Description', with: 'Wash them'
        click_on 'Create Task'

        expect(current_path).to eq '/tasks'
        expect(page).to have_content 'Dishes'
      end
    end
  end
end
