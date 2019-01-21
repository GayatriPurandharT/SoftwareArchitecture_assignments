class CreateThemains < ActiveRecord::Migration[5.2]
  def change
    create_table :themains do |t|

      t.timestamps
    end
  end
end
