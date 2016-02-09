class AddFnameToProfile < ActiveRecord::Migration
  def change
  	add_column :profiles, :first_name, :string
  	add_column :profiles, :last_name, :string
  	add_column :profiles, :phone, :integer
  end
end
