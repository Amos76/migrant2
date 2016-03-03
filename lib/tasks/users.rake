namespace :users do
  task :create_admin, [:email] => :environment do |task, args|
    user = User.find_by_email args.email
    user.add_role(:admin)
  end
end
