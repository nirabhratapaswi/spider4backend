class CreateEditorposts < ActiveRecord::Migration
  def change
    create_table :editorposts do |t|
      t.string :by
      t.string :message
      t.integer :number

      t.timestamps null: false
    end
  end
end
