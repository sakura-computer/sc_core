# This migration comes from sc_core (originally 20151012062004)
class CreateScCoreRoles < ActiveRecord::Migration
  def change
    create_table :sc_core_roles do |t|
      t.string :identifier, null: false
      t.string :name, null: false
      t.integer :created_by
      t.integer :updated_by
      
      t.timestamps null: false
    end

    add_index :sc_core_roles, :identifier

    ScCore::Role.create!(
      identifier: :client_admin,
      name: 'client administrator'
    )

    ScCore::Role.create!(
      identifier: :user,
      name: 'user'
    )

  end
end
