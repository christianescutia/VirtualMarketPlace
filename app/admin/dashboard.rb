ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    ul image_tag("website_logo.png", :alt => "Market logo", height: '145', width: '451')

    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
      column do
        panel "Welcome Center" do
        div do
        "Welcome " + current_admin_user.email 
        end
        div do 
          "Today is: " +  Time.now.strftime("%m/%d/%Y")
        end
        div do 
          image_tag("box.jpg", :alt => "Dashboard image", height: '200', width: '300') 
        end 
    end
  end  
  column do 
    panel "Admin Panel Usage Guide" do 
      para "The admin panel allows for full, unrestricted access to the database of the virtual marketplace. The dashboard 
      provides information, statistics and useful links. Through the dashboard administrators can create, view, update and delete (CRUD)
      entries in all the tables. All changes made through the admin panel will be represented in the live database and should be used with caution."
    end
  end  

      column do
        panel "Information Center" do
          ul do 
            li link_to("Return to home page")
            li link_to("Ruby on Rails Documentation", "https://guides.rubyonrails.org/")
            li link_to("Postgres Documentation", "https://postgresql.org/docs/")
            li link_to("Heroku General Help", "https://help.heroku.com/")
            li link_to("How to Back Up and Restore Site Data with Heroku", "https://devcenter.heroku.com/articles/heroku-postgres-backups")
            li link_to("How to Create a Local Backup (Import/Export Site Data)", "https://devcenter.heroku.com/articles/heroku-postgres-import-export")
            li link_to("How to Deploy to Heroku using GitHub", "https://devcenter.heroku.com/articles/git") 
            li ("Note: Make sure to backup site data at least once a month")
        end
        end
      end

      column do 
        panel "Statistics" do 
            panel "Most expensive item" do # that is available 
              exp_item = 0
              exp_name = ""
              Listing.all.map do |listing|
                if (listing.price > exp_item)
                  exp_item = listing.price
                  exp_name = listing.item
                end 
            end
            div do
            end 
        end 

        panel "Most Stocked Items" do
          Listing.all.order(:quantity).limit(3).each do |listing|
              b li ("Item: " + listing.item + ", Quantity: " + listing.quantity.to_s())
          end 
        end 

          end #for 
        end 
      end 
    end
  end # content 