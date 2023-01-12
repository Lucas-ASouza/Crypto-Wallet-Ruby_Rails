module ApplicationHelper
    def locale(locale)
        if I18n.locale == :en
            "American English"
        else
            "Português do Brasil"
        end  
    end             

    def data_br(data_us)
     
        data_us.strftime("%d/%m/%Y")
    end
    
    def application_name
        "Crypto Wallet APP"
    end   
end
