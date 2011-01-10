class CreateSubjects < ActiveRecord::Migration
  def self.up
    create_table :subjects do |t|
		t.string "title", :limit => 30
		t.integer "user"
		t.timestamps
    end
  end

  def self.down
    drop_table :subjects
  end
end
