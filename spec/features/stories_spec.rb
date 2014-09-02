require 'rails_helper'

describe Story do

  before :each do
  	@valid_attributes = {
  		content: 'This is my mash-up story',
  		user_id: 1,
  		title1: 'Harry Potter',
  		title2: 'Tron',
  		mash_title: 'Ron'
  	}
  end

  describe 'validations' do
  	context 'when all attributes are valid' do
  		it 'it valid' do
  			expect(Story.new(@valid_attributes)).to be_valid
  		end
  	end

  	context 'when content is missing' do
  		it 'is not valid' do
  			story = Story.new(@valid_attributes.merge(content: ''))
  			expect(story).not_to be_valid
  		end
  	end
  	context 'when user_id is missing' do
  		it 'is not valid' do
  			story = Story.new(@valid_attributes.merge(user_id: nil))
  			expect(story).not_to be_valid
  		end
  	end
  	context 'when title1 is missing' do
  		it 'is not valid' do
  			story = Story.new(@valid_attributes.merge(title1: ''))
  			expect(story).not_to be_valid
  		end
  	end
  	context 'when title2 is missing' do
  		it 'is not valid' do
  			story = Story.new(@valid_attributes.merge(title2: ''))
  			expect(story).not_to be_valid
  		end
  	end
  	context 'when mash_title is missing' do
  		it 'is not valid' do
  			story = Story.new(@valid_attributes.merge(mash_title: ''))
  			expect(story).not_to be_valid
  		end
  	end
  end
end