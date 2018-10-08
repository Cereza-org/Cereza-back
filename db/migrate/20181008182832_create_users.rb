class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name,null: false
      t.string :phone
      t.string :password_digest,null: false
      t.string :username,null: false
      t.string :email,null: false,:limit => 55
      t.references :position, foreign_key: true
      t.boolean :is_mobile

      t.timestamps
    end
    add_index :users, :username, unique: true
    add_index :users, :email, unique: true
  end
end
