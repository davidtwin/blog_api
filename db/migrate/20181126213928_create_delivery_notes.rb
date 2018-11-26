class CreateDeliveryNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :delivery_notes do |t|
      t.references :water, foreign_key: true
      t.references :customer, foreign_key: true
      t.string :delivery_number

      t.timestamps
    end
  end
end
