require 'rails_helper'

# RSpec.describe Review, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

describe Review, type: :model do
  it { should belong_to(:restaurant) }

  it 'cannot have a rating above 5' do
    review = Review.new(rating: 10)
    expect(review).to have(1).error_on(:rating)
  end
end
