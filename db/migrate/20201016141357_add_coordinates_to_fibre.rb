class AddCoordinatesToFibre < ActiveRecord::Migration[6.0]
  def change
    add_column :fibres, :latitude, :float
    add_column :fibres, :longitude, :float
  end
end
