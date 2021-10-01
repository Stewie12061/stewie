class AddHrefToNavs < ActiveRecord::Migration[6.1]
  def change
    add_column :navs, :href, :string
  end
end
