class AddMissionsCountToConsultants < ActiveRecord::Migration[7.0]
  def change
    add_column :consultants, :missions_count, :integer
  end
end
