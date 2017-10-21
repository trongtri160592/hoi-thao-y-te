class ChangeDataTypeForEnglishContent < ActiveRecord::Migration[5.1]
  def change
    change_column :contents, :content, :text
  end
end
