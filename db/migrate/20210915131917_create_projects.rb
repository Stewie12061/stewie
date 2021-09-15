class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :icon
      t.string :value
      t.string :text

      t.timestamps
    end
  end
end
