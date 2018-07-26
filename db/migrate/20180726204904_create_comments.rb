class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :gossip, foreign_key: true
      t.references :user, foreign_key: true
      t.string :commentable_type
      t.integer :commentable_id
      t.text :content

      t.timestamps
    end
  end
end
