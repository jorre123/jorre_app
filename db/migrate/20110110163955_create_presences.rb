class CreatePresences < ActiveRecord::Migration
  def self.up
    create_table :presences do |t|
		t.integer "subject_id"
		t.integer "student_id"
		t.integer "presence"
		t.timestamps
    end
  end

  def self.down
    drop_table :presences
  end
end
