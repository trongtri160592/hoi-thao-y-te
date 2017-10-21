class CreateContents < ActiveRecord::Migration[5.1]
  def change
    create_table :contents do |t|
      t.string :content
      t.string :image
      t.string :title

      t.timestamps
    end
  end
end
