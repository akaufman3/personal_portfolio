class CreateCurrentlyReadingGrs < ActiveRecord::Migration
  def change
    create_table :currently_reading_grs do |t|
      t.string :title
      t.string :author
      t.string :book_image

      t.timestamps null: false
    end
  end
end
