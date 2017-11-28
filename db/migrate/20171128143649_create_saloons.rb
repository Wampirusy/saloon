class CreateSaloons < ActiveRecord::Migration[5.1]
  def change
    create_table :saloons do |t|
      t.string :name
      t.string :address
      t.time :time_open
      t.time :time_close

      t.timestamps
    end
  end
end
