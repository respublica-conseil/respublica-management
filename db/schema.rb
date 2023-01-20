
ActiveRecord::Schema[7.0].define(version: 2023_01_13_082209) do
  create_table "missions", force: :cascade do |t|
    t.string "ref_mission"
    t.string "ref_consultant"
    t.string "mois_1_descr"
    t.string "mois_2_descr"
    t.string "mois_3_descr"
    t.string "mois_4_descr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end




