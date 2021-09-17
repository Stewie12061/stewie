namespace :administrator do
  desc "create data service"
  task init: :environment do
    Administrator.create (
      {
        email: 'nhut170501@gmail.com',
        password: '123456',
        first_name: 'Nhut',
        last_name: 'Pham Minh',
      }
    )
  end
end
