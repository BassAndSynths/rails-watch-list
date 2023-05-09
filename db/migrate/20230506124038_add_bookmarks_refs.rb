class AddBookmarksRefs < ActiveRecord::Migration[7.0]
  def change
    change_table :bookmarks do |t|
      t.references :list, null: false, foreign_key: true
      t.references :movie, null: false, foreign_key: true
    end
  end
end
