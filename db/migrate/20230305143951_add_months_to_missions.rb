class AddMonthsToMissions < ActiveRecord::Migration[7.0]
  def change
    add_column :missions, :Janvier, :text
    add_column :missions, :Fevrier, :text
    add_column :missions, :Mars, :text
    add_column :missions, :Avril, :text
    add_column :missions, :Mai, :text
    add_column :missions, :Juin, :text
    add_column :missions, :Juillet, :text
    add_column :missions, :Août, :text
    add_column :missions, :Septembre, :text
    add_column :missions, :Octobre, :text
    add_column :missions, :Novembre, :text
    add_column :missions, :Decembre, :text

  end
end
