class CreateEmployees < ActiveRecord::Migration[5.1]psche
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :alias
      t.string :title
      t.string :office
      t.string :img_url
<<<<<<< HEAD
      t.integer :dog
=======
      t.integer :dog_id
>>>>>>> c5f3e0ba58aa107dac84f78506b629068921066f

      t.timestamps
    end
  end
end
