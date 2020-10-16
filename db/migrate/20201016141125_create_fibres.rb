class CreateFibres < ActiveRecord::Migration[6.0]
  def change
    create_table :fibres do |t|
      t.string :serviceid
      t.string :address

      t.timestamps
    end
  end
end
