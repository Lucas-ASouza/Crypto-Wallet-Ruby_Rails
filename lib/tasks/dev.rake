namespace :dev do
  desc "Configures the development envrioment"
  task setup: :environment do
    %x(rails db:drop db:create db:migrate db:seed)
  end

end
