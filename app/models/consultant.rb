class Consultant < ApplicationRecord
  def full_name
    "#{last_name} #{first_name}"
  end
  
  def missions_count
    Mission.where("consultants LIKE ?", "%#{self.full_name}%").count
  end

  def charge_sum_mars
    Charge.where("consultant_full_name LIKE ?", "%#{self.full_name}%").group(:consultant_full_name)
      .sum(:march_charge).values.first
  end

  def charge_sum_april
    Charge.where("consultant_full_name LIKE ?", "%#{self.full_name}%").group(:consultant_full_name)
      .sum(:april_charge).values.first
  end

  def charge_sum_may
    Charge.where("consultant_full_name LIKE ?", "%#{self.full_name}%").group(:consultant_full_name)
      .sum(:may_charge).values.first
  end

  def num_missions_ref
    Mission.where("consultant_reference LIKE ?", "%#{self.full_name}%").count
  end

  has_many :charges
  has_many :missions, through: :charges

end
