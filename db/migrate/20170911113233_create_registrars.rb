class CreateRegistrars < ActiveRecord::Migration[5.1]
  def change
    create_table :registrars do |t|
      t.string :name
      t.string :birth
      t.string :nationality
      t.string :company
      t.string :job
      t.string :domain
      t.string :image
      t.string :cvs
      t.string :string
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
