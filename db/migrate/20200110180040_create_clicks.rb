class CreateClicks < ActiveRecord::Migration[6.0]
  def change
    create_table :clicks do |t|
      t.integer :number

      t.timestamps
    end
  end
end
