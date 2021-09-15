class CreateAboutTexts < ActiveRecord::Migration[6.1]
  def change
    create_table :about_texts do |t|
      t.text :text

      t.timestamps
    end
  end
end
