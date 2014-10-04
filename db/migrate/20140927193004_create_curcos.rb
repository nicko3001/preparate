class CreateCurcos < ActiveRecord::Migration
  def change
    create_table :curcos do |t|
      t.string :titulo
      t.text :descripcion
      t.integer :precio

      t.timestamps
    end
  end
end
