# Rails Freamwork (opinionated) global

=begin
1) install rails

2) run 
rails new + projectname  

3) open project 

- terminal 
add . 
commit 

4) run server 
- rails s 
- bin/rails   //not conflig
- bundle exec rails s  //run gem in gemfile only

---------files-----------

1) routes.rb --> config 
2) .rouby-version
3) gemfile



...........tools......

cli tools :
- bundle install (install all gem )
- bundle show    (show all gem installed)
- bundle show --paths  (paths all gem )
- railse consol == bundel exec rails c (inside use db User.craete(name:'u1')) (acces database use model (db dont need 7 layer ))


...................

lsof -i :3000  


.........routefile..........
                :controller
get '/users', to:"users#index"   //by def go app


# steps
1)routes 
2)app --> controller (have a method (if no have render inside method show ))
3) view --> folder name controllername

.........controller..........

1)users_controller.rb
class UsersController < ApplicationController
   def index
    //not found  render view go view folder name users

    # @users="data data data"  //can use in view (<%= @users %>)
    # use model
    @users=User.create()
    or use 
    - railse consol == bundel exec rails c (inside use db User.craete(name:'u1')) (acces database use model (db dont need 7 layer ))
     user1=User.new(name:'new user') //dont save in db 
     user1.save   //save in db( return boolyan (true))

   end
end 

---------# database----------
# dml (models )
# ddl(scema --> migration )

# --------migration db-----
# rails g migration create_users


...........view..........
1)folder ..> users(namecontroller) ....>

3)index.html.erb 
<% if true %>  // not have = statment (not have value show)
<%= @users %>
<% end %>


.........models..............
 controller ---> create file.rb
 1)user.rb
 class User <ApplicationRecord
    # crds .create .find .update 

 end

............use orm.............
1) ActiveRecord (design pattern)



=end 




