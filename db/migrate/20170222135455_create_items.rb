class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.integer :serie
      t.text :description
      t.integer :size

      t.timestamps
    end
  end
end
