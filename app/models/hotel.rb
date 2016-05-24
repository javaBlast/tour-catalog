class Hotel < ActiveRecord::Base
  has_many :comments
  validates :title,:description, :image_url, presence: true
  validates :title, :uniqueness => true
  validates :price, :numericality => {greater_than_or_equal_to: 0.01}
  validates :image_url, allow_blank: true, format: {
      with: %r{\.(gif|jpg|png)\Z}i,
      message: 'URL должен указывать на изображение формата GIF, JPG или PNG.'
  }


  def self.latest
    Hotel.order(:updated_at).last
  end

end
