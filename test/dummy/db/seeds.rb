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
  name: 'root user',
  email: 'root@sample.com',
  password: 'password',
  user_roles_attributes: [
    {
      role: ScCore::Role.find_by!(identifier: :root),
    },
  ]
)
