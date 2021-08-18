class CreatePublication < ActiveRecord::Migration[5.2]
  def change
    create_table :publications do |t|
      t.text :content
    end
  end
end
