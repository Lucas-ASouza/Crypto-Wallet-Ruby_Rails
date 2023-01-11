namespace :dev do
  desc "Configures the development envrioment"
  task setup: :environment do
    if Rails.env.development?

    show_spinner("Droping Database...") {%x(rails db:drop)}
     
    show_spinner("Creating Database...") {%x(rails db:create)}
      
    show_spinner("Migrating Database...") {%x(rails db:migrate)}
      
    show_spinner("Seeding Database...") {%x(rails db:seed)}
       
    else
      puts "You are not in the development envrioment to run this!!"
    end
  end

  private
    def show_spinner(msg_start)
      spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
      spinner.auto_spin
      yield
      spinner.success('(task completed!)')
    end

end
