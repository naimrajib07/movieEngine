class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.text :description
      t.text :director
      t.references :user, index: true

      t.timestamps
    end
  end
end
