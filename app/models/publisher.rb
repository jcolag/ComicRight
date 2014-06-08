class Publisher < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name        :string
    founded     :integer
    closed      :integer
    disposition :integer
    timestamps
  end
  attr_accessible :name, :founded, :closed, :disposition

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
