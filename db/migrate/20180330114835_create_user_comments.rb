class CreateUserComments < ActiveRecord::Migration[5.1]
  def change
    create_table :user_comments do |t|
      t.string :comment
      t.string :ip_address

      t.timestamps
    end
  end
end
