class AddNomToMissions < ActiveRecord::Migration[7.0]
  def change
    add_column :missions, :nom, :string
  end
end
