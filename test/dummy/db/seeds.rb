# coding: utf-8
ScCore::User.create!(
  name: 'テストユーザ',
  email: 'test@sample.com',
  password: 'password',
  user_roles_attributes: [
    {
      role: ScCore::Role.find_by!(identifier: :user),
    },
  ]
)

ScCore::User.create!(
  name: 'クライアント管理者１',
  email: 'admin@client1.com',
  password: 'password',
  user_roles_attributes: [
    {
      role: ScCore::Role.find_by!(identifier: :client_admin),
    },
  ]
)

ScCore::AdminUser.create!(
  name: '管理者',
  email: 'root@sample.com',
  password: 'password'
)
