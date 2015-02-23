class CreateArticle2s < ActiveRecord::Migration
  def change
    create_table :article2s do |t|
      t.string :title
      t.text :content
      t.integer :category_id
      t.boolean :active

      t.timestamps
    end
  end
end
