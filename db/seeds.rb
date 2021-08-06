if Rails.env.development?
  AdminUser.create!(email: 'admin@example.com', password: 'password',
                    password_confirmation: 'password')

  chat_room_names = %w[
    General
    Random
    Sports
    Science\ &\ Technology
    Movies\ &\ Series
  ]

  chat_room_names.each do |name|
    ChatRoom.create!(name: name)
  end
end
