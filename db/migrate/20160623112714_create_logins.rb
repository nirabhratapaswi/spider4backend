class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.string :username
      t.string :password
      t.string :authority

      t.timestamps null: false
    end
  end
end
