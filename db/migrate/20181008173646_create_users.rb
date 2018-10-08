class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone
      t.string :password_digest
      t.string :username
      t.string :email
      t.references :position, foreign_key: true
      t.boolean :is_mobile

      t.timestamps
    end
  end
end
