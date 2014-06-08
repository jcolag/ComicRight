class Comic < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    name   :string
    issue  :string
    volume :integer
    number :integer
    month  :integer
    year   :integer
    timestamps
  end
  attr_accessible :name, :issue, :volume, :number, :month, :year

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
