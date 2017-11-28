class Order < ApplicationRecord

  belongs_to :table

  def data
    if super.nil?
      create_data
    end

    super
  end

  def reserve(from, to)
    (from..to).each do | hour |
      if data[hour] == false
        data[hour] = true
      else
        return false
      end
    end

    self.update(:data => data)
  end

  private

  def create_data
    new_data = {}

    (table.saloon.time_open.strftime('%H')..table.saloon.time_close.strftime('%H')).each do | hour |
      new_data[hour] = false
    end

    write_attribute(:data, new_data)
  end
end
