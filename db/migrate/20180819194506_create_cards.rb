class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :term
      t.text :definition
      t.belongs_to :deck
      t.timestamps
    end
  end
end
