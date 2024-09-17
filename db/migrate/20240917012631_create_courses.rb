class CreateCourses < ActiveRecord::Migration[7.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.integer :duration
      t.decimal :price

      t.timestamps
    end
  end
end
