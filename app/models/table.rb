class Table < ApplicationRecord

  belongs_to :saloon
  has_many :orders

  def order(date)
    order = self.orders.where(:date => date).take

    if order.nil?
      order = Order.new(:date => date)
      order.table = self
    end

    order
  end
end
