class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.text :body, null: false
      t.integer :rating
      t.integer :movie
      t.integer :user_id

      t.timestamps
    end
  end
end
