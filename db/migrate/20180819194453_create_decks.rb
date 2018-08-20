class CreateDecks < ActiveRecord::Migration[5.1]
  def change
    create_table :decks do |t|
      t.string :name
      t.text :description
      t.boolean :public
      t.timestamps
    end
  end
end
