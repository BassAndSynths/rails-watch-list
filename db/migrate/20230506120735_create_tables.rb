class CreateTables < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :overview
      t.string :poster_url
      t.float  :rating

      t.timestamps
    end

    create_table :bookmarks do |t|
      t.text :comment

      t.timestamps
    end

    create_table :lists do |t|
      t.string :name

      t.timestamps
    end
  end
end
