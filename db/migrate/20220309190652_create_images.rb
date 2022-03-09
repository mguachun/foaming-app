class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.string :classification
      t.integer :user_id

      t.timestamps
    end
  end
end
