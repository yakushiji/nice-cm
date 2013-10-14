class CreateCms < ActiveRecord::Migration
  def change
    create_table :cms do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
