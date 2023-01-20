class CreateMissions < ActiveRecord::Migration[7.0]
  def change
    create_table :missions do |t|
      t.string :ref_mission
      t.string :ref_consultant
      t.string :mois_1_descr
      t.string :mois_2_descr
      t.string :mois_3_descr
      t.string :mois_4_descr

      t.timestamps
    end
  end
end


