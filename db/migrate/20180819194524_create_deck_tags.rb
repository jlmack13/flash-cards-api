class CreateDeckTags < ActiveRecord::Migration[5.1]
  def change
    create_table :deck_tags do |t|
      t.belongs_to :deck 
      t.belongs_to :tag
      t.timestamps
    end
  end
end
