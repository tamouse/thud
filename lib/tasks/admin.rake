namespace :admin do
  desc "Create a new admin user"
  task :new, [:email,:password] => :environment do |task, args|
    puts "creating admin user #{args[:email]}, password #{args[:password]}"
    User.create!(
      email: args[:email],
      admin: true,
      password: args[:password],
      password_confirmation: args[:password]
   )
  end

end
