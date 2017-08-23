class CreateProvinces < ActiveRecord::Migration[5.1]
  def change
    create_table :provinces do |t|
      t.string :name
      t.belongs_to :country, index: true, foreign_key: true
      t.timestamps
    end
  end
end
