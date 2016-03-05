class Restaurant < ActiveRecord::Base

  belongs_to :user

  has_many :reviews, dependent: :destroy
  validates :name, length: {minimum: 3}, uniqueness: true

  # has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  # validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/


  def owned_by?(user)
    user == self.user
  end

  def average_rating
    return 'N/A' if reviews.none?
    reviews.inject(0) {|memo, review| memo + review.rating} / reviews.length
  end

end
