require 'rails_helper'

describe Task, type: :model do
  #tells RSpec we are testing the Task class
  # type: :model tells it this is a model (could leave out
  # since this is located inside the models dir)
  describe 'instance methods' do
    describe '#laundry?' do
      it 'returns true when the title is laundry' do
        task = Task.create!(title: 'laundry', description: 'wash and fold baby')

        expect(task.laundry?). to be true
      end

      it 'returns true when description contains laundry' do
        task = Task.create!(title: 'Clean clothes', description: 'Do the laundry')

        expect(task.laundry?).to be true
      end
    end
  end
end
