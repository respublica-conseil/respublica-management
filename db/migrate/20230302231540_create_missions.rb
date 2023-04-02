class CreateMissions < ActiveRecord::Migration[7.0]
  def change
    create_table :missions do |t|
      t.string :mission_reference
      t.string :consultant_reference
      t.string :mission_status
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
