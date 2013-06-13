class CreateNotes < ActiveRecord::Migration
  def change
  	create_table :notes do |t|
  	  t.string     :title, :body
  	  t.references :user
  	end 
  end
end
