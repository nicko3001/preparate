class AddImagenToCurco < ActiveRecord::Migration
  def change
    add_column :curcos, :Imagen, :string
  end
end
