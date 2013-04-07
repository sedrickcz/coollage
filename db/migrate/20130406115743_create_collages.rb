class CreateCollages < ActiveRecord::Migration
  def change
    create_table :collages do |t|
      t.string :title
      t.string :author

      t.timestamps
    end
  end
end
