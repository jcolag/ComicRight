class Copyright < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    firstrenewal  :integer
    notice        :integer
    registration  :integer
    renewalscript :integer
    renewalcce    :boolean
    renewaldb     :boolean
    timestamps
  end
  attr_accessible :firstrenewal, :notice, :registration, :renewalscript, :renewalcce, :renewaldb

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
