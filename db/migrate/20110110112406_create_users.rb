class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
		t.string "first_name", :limit => 30
		t.string "last_name", :limit => 50
		t.string "email", :null => false
		t.string "password", :limit => 40
		t.timestamps 
		end
		
	# Default user toevoegen
	User.create :first_name => 'Admin', :last_name => 'Administrator', :email => 'admin@fakeadmin.be', :password => 'eloict'
  end

  def self.down
    drop_table :users
  end
end