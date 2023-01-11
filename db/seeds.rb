# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  Coin.create!(
       description: "bitcoin",
       acronym: "BTC",
       url_image: "https://w7.pngwing.com/pngs/232/592/png-transparent-btc-crypto-cryptocurrency-cryptocurrencies-cash-money-bank-payment-icon.png"    
)
   Coin.create!(
       description: "Etherum",
       acronym: "ETH",
       url_image: "https://img1.gratispng.com/20180516/ouw/kisspng-ethereum-cryptocurrency-blockchain-logo-eos-io-crypto-5afc9ab9b20d86.8643914515265041217293.jpg"    
)
   Coin.create!(
       description: "Dash",
       acronym: "DASH",
       url_image: "https://cdn4.iconfinder.com/data/icons/crypto-currency-and-coin-2/256/dash_dashcoin-512.png"    
)