class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.text :company_name
      t.text :address
      t.text :tel
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
