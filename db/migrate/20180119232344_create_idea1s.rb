class CreateIdea1s < ActiveRecord::Migration[5.1]
  def change
    create_table :idea1s do |t|
      t.string :name
      t.text :description
      t.string :picture
      t.integer :age

      t.timestamps
    end
  end
end
