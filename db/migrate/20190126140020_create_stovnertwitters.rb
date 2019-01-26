class CreateStovnertwitters < ActiveRecord::Migration[5.2]
  def change
    create_table :stovnertwitters do |t|
      t.text :body
      t.string :username

      t.timestamps
    end
  end
end
