require 'rails_helper'

describe Poster do

  before :each do
  	@valid_attributes = {
  		image_url: 'http://www.empireonline.com/images/features/movie-poster-mash-up/harry-potter/1.jpg',
  		user_id: 1,
  		blurb: 'Ron gets digital',
  		title1: 'Harry Potter',
  		title2: 'Tron',
  		mash_title: 'Ron'
  	}
  end

  describe 'validations' do
  	context 'when all attributes are valid' do
  		it 'it valid' do
  			expect(Poster.new(@valid_attributes)).to be_valid
  		end
  	end

  	context 'when image_url is missing' do
  		it 'is not valid' do
  			poster = Poster.new(@valid_attributes.merge(image_url: ''))
  			expect(poster).not_to be_valid
  		end
  	end
  	context 'when user_id is missing' do
  		it 'is not valid' do
  			poster = Poster.new(@valid_attributes.merge(user_id: nil))
  			expect(poster).not_to be_valid
  		end
  	end
  	context 'when title1 is missing' do
  		it 'is not valid' do
  			poster = Poster.new(@valid_attributes.merge(title1: ''))
  			expect(poster).not_to be_valid
  		end
  	end
  	context 'when title2 is missing' do
  		it 'is not valid' do
  			poster = Poster.new(@valid_attributes.merge(title2: ''))
  			expect(poster).not_to be_valid
  		end
  	end
  	context 'when blurb is missing' do
  		it 'is not valid' do
  			poster = Poster.new(@valid_attributes.merge(blurb: ''))
  			expect(poster).not_to be_valid
  		end
  	end
  	context 'when mash_title is missing' do
  		it 'is not valid' do
  			poster = Poster.new(@valid_attributes.merge(mash_title: ''))
  			expect(poster).not_to be_valid
  		end
  	end
  end
end