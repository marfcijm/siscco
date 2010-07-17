class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table "roles" do |t|
      t.column :name, :string
    end
    
    # generate the join table
    create_table "roles_users", :id => false do |t|
      t.column :user_id, :integer
      t.column :role_id, :integer
    end
    add_index "roles_users", "role_id"
    add_index "roles_users", "user_id"
  end

  def self.down
    drop_table "roles"
    drop_table "roles_users"
  end
end
