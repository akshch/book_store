class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :description
      t.string :text
      t.string :author
      t.integer :status
      t.integer :checked_out_by_id
      t.references :library, null: false, foreign_key: true

      t.timestamps
    end
  end
end
