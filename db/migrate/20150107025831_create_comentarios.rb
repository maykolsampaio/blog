class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :autor
      t.text :conteudo
      t.references :post, index: true

      t.timestamps null: false
    end
    add_foreign_key :comentarios, :posts
  end
end
