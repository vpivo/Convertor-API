class CreateConverters < ActiveRecord::Migration
  def change
    create_table :converters do |t|
      t.text :text
      t.text :convertered
      t.text :metadata
      t.timestamps
    end
  end
end
