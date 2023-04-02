class AddNumMissionsrefToConsultants < ActiveRecord::Migration[7.0]
  def change
    add_column :consultants, :num_missions_ref, :integer,default: 0
  end
end