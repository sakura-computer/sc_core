class CreateScCoreUserRoles < ActiveRecord::Migration
  def change
    create_table :sc_core_user_roles do |t|
      t.references :user, null: false
      t.references :role, null: false
      t.integer :created_by
      t.integer :updated_by
      
      t.timestamps null: false
    end

    add_index :sc_core_user_roles, :user_id
  end
end
