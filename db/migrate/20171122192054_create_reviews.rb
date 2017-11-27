class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :body
      t.references :user
      t.references :film

      t.timestamps
    end
  end
end
