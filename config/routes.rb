Rails.application.routes.draw do
  root to: "buddies#home"
  resources :buddies do
    resources :bookings
  end
end

# Path	Verb	Controller	Action
# /buddies	GET	buddies	index
# /buddies/:id	GET	buddies	show
# /users/sign_in	GET	sessions	new
# /users/sign_in	POST	sessions	create
# /buddies/:buddy_id/bookings/new	GET	bookings	new
# /buddies/:buddy_id/bookings	POST	bookings	create
# /buddies/new	GET	buddies	new
# /buddies	POST	buddies	create
# buddies/:id/edit	GET	buddies	edit
# buddies/:id	PATCH	buddies
# buddies/:id	DELETE	buddies	destroy
