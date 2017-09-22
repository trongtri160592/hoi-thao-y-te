class AddEnglishContentToNews < ActiveRecord::Migration[5.1]
  def change
    add_column :news, :english_content, :string
  end
end
