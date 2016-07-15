class CreateMessengers < ActiveRecord::Migration
  def change
    create_table :messengers do |t|
    	t.text :content
		t.timestamps null: false
    end
  end
end
