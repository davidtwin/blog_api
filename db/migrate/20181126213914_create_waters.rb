class CreateWaters < ActiveRecord::Migration[5.2]
  def change
    create_table :waters do |t|
      t.references :customer, foreign_key: true
      t.string :address

      t.timestamps
    end
  end
end
