class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.references :gallery, index: true

      t.timestamps
    end
  end
end
