class CreateMicrosposts < ActiveRecord::Migration[7.0]
  def change
    create_table :microsposts do |t|
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
