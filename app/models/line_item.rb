class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  belongs_to :cart

  # add callback to set default values on quantity.. nabnab
  before_save :default_values

  def default_values
  	self.quantity ||= 1
  end

  def total_price
  	product.price * quantity
  end
end
