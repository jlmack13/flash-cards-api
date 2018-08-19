class CreateDecks < ActiveRecord::Migration[5.1]
  def change
    create_table :decks do |t|
      t.string :name
      t.description :text
      t.bool :public
      t.timestamps
    end
  end
end
