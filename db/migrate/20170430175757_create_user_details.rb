class CreateUserDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :user_details do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :message

      t.timestamps
    end
  end
end
