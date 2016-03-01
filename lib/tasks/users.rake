namespace :users do
  task :create_admin, [:environment] do |t, args|
    user = User.find_by_email ARGV[1]
    user.add_role(:admin)
  end
end
