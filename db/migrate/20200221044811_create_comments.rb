class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :subject
      t.string :review
      t.string :rating
      t.belongs_to :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
