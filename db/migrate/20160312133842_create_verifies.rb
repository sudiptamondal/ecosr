class CreateVerifies < ActiveRecord::Migration
  def change
    create_table :verifies do |t|
      t.string :registration_number
      t.string :email
      t.string :website

      t.timestamps
    end
  end
end
