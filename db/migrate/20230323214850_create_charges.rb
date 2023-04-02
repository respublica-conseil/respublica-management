class CreateCharges < ActiveRecord::Migration[7.0]
   def change
    create_table :charges do |t|
      t.string :mission_reference, null: false
      t.string :consultant_full_name, null: false
      t.integer  :march_charge, default: 0
      t.integer :april_charge, default: 0
      t.integer :may_charge, default: 0
      t.timestamps
    end
  end
end
