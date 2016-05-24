class CreateGoodreads < ActiveRecord::Migration
  def change
    create_table :goodreads do |t|
      t.string :title
      t.string :author
      t.string :book_img

      t.timestamps null: false
    end
  end
end
