class AddUserReferences < ActiveRecord::Migration[7.0]
  def change
    add_reference :buddies, :user, foreign_key: true
  end
end
