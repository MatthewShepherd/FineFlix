class AddImagesToFilms < ActiveRecord::Migration[5.1]
  def change
    add_column :films, :image_url, :string
    add_column :films, :thumbnail_url, :string
  end
end
