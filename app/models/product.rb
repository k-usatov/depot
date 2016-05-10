class Product < ActiveRecord::Base
	validates :title, :description, :image_url, presence: true,:presence => {:message =>'Не должно быть пустым'}
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	validates :title, uniqueness: true ,length: { minimum: 5 }
	validates :image_url, allow_blank: true, format: {
		with: %r{\.(gif|jpg|png)\Z}i,
		message: 'must be a URL for GIF, JPG or PNG image.'
		# URL должен указывать на изображение формата GIF, JPG или PNG
	}
	def self.latest
		Product.order(:updated_at).last
	end
	
	has_many :line_items
	
	before_destroy :ensure_not_referenced_by_any_line_item
	
	
	private
	
	# убеждаемся в отсутствии товарных позиций, ссылающихся на данный товар
	def ensure_not_referenced_by_any_line_item
		if line_items.empty?
			return true
		else
			errors.add(:base, 'существуют товарные позиции')
			return false
		end
	end
end
