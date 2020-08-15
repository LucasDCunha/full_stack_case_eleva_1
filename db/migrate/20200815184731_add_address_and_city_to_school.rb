class AddAddressAndCityToSchool < ActiveRecord::Migration[6.0]
  def change
    add_column :schools, :address, :string
    add_column :schools, :city, :string
  end
end
