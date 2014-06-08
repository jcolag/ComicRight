class Authorship < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    role  :string
    basis :string
    timestamps
  end
  attr_accessible :role, :basis

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
