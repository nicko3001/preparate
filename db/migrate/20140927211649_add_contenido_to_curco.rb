class AddContenidoToCurco < ActiveRecord::Migration
  def change
    add_column :curcos, :Contenido, :text
  end
end
