class Story < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    page  :integer
    title :string
    diff  :boolean
    timestamps
  end
  attr_accessible :page, :title, :diff

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
