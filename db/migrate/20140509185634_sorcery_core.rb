class SorceryCore < ActiveRecord::Migration
	def up
		add_column    :users, :crypted_password, :string 
		add_column    :users, :salt,             :string
		add_index     :users, :email, unique: true
		remove_column :users, :password_digest
	end

	def down
		remove_column :users, :crypted_password
		remove_column :users, :salt
		remove_index  :users, :email
		add_column		:users, :password_digest,  :string
	end

  # def change
  #   create_table :users do |t|
  #   	t.string :name, 						:null => false
  #     t.string :email,            :null => false
  #     t.string :crypted_password, :null => false
  #     t.string :salt,             :null => false

  #     t.timestamps
  #   end

  #   add_index :users, :email, unique: true
  # end
end