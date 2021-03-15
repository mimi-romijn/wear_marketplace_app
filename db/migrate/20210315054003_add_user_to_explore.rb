class AddUserToExplore < ActiveRecord::Migration[6.0]
  def change
    add_reference :explores, :user, null: false, foreign_key: true
  end
end
