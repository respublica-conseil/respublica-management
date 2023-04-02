class Mission < ApplicationRecord
    serialize :consultants, Array

    after_create :create_charges_for_consultants
    before_destroy :delete_charges_for_consultants
    after_update :create_charges_for_consultants

  private

  def create_charges_for_consultants
    consultants.each do |consultant_name|
      Charge.create(mission_reference: mission_reference, consultant_full_name: consultant_name)
    end
  end

  private

  def delete_charges_for_consultants
    Charge.where(mission_reference: mission_reference).destroy_all
  end
end
