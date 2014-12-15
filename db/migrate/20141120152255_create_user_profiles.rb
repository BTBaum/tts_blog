class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.text :bio
      t.integer :age
      t.references :user, index: true

      t.timestamps
    end
  end
end
