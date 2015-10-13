ScCore::User.create!(
  name: 'test user',
  email: 'test@sample.com',
  password: 'password',
  user_roles_attributes: [
    {
      role: ScCore::Role.find_by!(identifier: :user),
    },
  ]
)

ScCore::User.create!(
  name: 'client admin',
  email: 'admin@client.com',
  password: 'password',
  user_roles_attributes: [
    {
      role: ScCore::Role.find_by!(identifier: :client_admin),
    },
  ]
)

ScCore::AdminUser.create!(
  name: 'root administrator',
  email: 'root@sample.com',
  password: 'password'
)
