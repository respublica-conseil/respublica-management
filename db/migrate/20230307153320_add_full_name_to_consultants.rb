class AddFullNameToConsultants < ActiveRecord::Migration[7.0]
  def change
    add_column :consultants, :full_name, :string
  end
end
