class CreateTraits < ActiveRecord::Migration[5.1]
  def change
    create_table :traits do |t|
      t.string :name
      t.string :api_url

      t.timestamps
    end
  end
end
