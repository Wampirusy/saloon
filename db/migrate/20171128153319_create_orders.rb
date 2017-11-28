class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :table, foreign_key: true
      t.date :date
      t.json :data

      t.timestamps
    end
  end
end
