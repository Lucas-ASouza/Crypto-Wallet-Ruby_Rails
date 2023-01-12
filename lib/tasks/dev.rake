namespace :dev do
  desc "Configures the development envrioment"
  task setup: :environment do
    if Rails.env.development?

    show_spinner("Droping Database...") {%x(rails db:drop)}
    show_spinner("Creating Database...") {%x(rails db:create)}
    show_spinner("Migrating Database...") {%x(rails db:migrate)}
    %x(rails dev:populate)
    %x(rails dev:populate_mining_types)
       
    else
      puts "You are not in the development envrioment to run this!!"
    end
  end



  desc "Populate database with a few coins"
   task populate: :environment do
    show_spinner("Populating Database...") do
   
     coins = (
           [
            {
             description: "bitcoin",
             acronym: "BTC",
             url_image: "https://w7.pngwing.com/pngs/232/592/png-transparent-btc-crypto-cryptocurrency-cryptocurrencies-cash-money-bank-payment-icon.png",    
            },
            {
             description: "Etherum",
             acronym: "ETH",
             url_image: "https://img1.gratispng.com/20180516/ouw/kisspng-ethereum-cryptocurrency-blockchain-logo-eos-io-crypto-5afc9ab9b20d86.8643914515265041217293.jpg",    
            },
            {
             description: "Dash",
             acronym: "DASH",
             url_image: "https://cdn4.iconfinder.com/data/icons/crypto-currency-and-coin-2/256/dash_dashcoin-512.png",    
            }
           ]
     )
    
    #find or create by will see if it already exists in the database and create it otherwise.
     coins.each do |coin|
           sleep(1)
           Coin.find_or_create_by!(coin)
    end
   end
  end

  desc "Populating the types of mineration"
  task populate_mining_types: :environment do
   show_spinner("Registering Mining Types...") do
     mining_types = [
       {description: "Proof of Work", acronym: "PoW"},
       {description: "Proof of Stake", acronym: "PoS"},
       {description: "Proof of Capacity", acronym: "PoC"}
     ]

     mining_types.each do |mining_type|
      MiningType.find_or_create_by!(mining_type)
     end
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
