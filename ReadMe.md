READ ME 

pleasee follow the instructions below to run our app on your local machine

Installing Ruby 
1. check to see if it is already on your machine by opening the command line and typing 
ruby --version 

if ruby is intalled you should see the version number displayed below 
	* note that our app runs on ruby 3.0.0 * 

2. make sure postgres is also installed on your machine 

3. Nodejs and yarn should be installed as well - https://nodejs.org/en/download/ https://classic.yarnpkg.com/en/docs/install 

4. Once everything is installed and ready to go run '$ gem install rails'

* you may need to run bundle install after rails has been installed but typically it would prompt you to do so*

5. Within the code go to config-> database.yml 

under default and development change the fields to:
	  database: VirtualMarketPlace
	  username: "your username" 
	  password: "your password"
	  host: localhost
	  port: 5432

6. code should be ready to go 
	6a. Open terminal and cd to the folder where our code is installed. cd into 'VirtualMarketPlace'
	6b. run the command 'rails db:migrate'
	6c. run the command 'rails db:seed'
	6d. run 'rails server' or 'rails s'

6. open a webbrowser and type: localhost:3000 -> this will not work if the server is not running

