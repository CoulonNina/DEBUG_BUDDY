class CreateBuddies < ActiveRecord::Migration[7.0]
  def change
    create_table :buddies do |t|
      t.string :skills
      t.text :description

      t.timestamps
    end
  end
end
