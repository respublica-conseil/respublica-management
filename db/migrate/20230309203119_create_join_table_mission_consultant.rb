class CreateJoinTableMissionConsultant < ActiveRecord::Migration[7.0]
      def change
    create_join_table :missions, :consultants do |t|
      t.index [:mission_id, :consultant_id]
      t.index [:consultant_id, :mission_id]
    end
  end
end
