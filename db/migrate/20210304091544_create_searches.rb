class CreateSearches < ActiveRecord::Migration[6.0]
  def change
    create_table :searches do |t|
      t.string :name
      t.string :email
      t.string :title
      t.string :phone
      t.boolean :status

      t.timestamps
    end
  end
end
