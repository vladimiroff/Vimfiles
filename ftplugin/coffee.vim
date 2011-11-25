let coffee_make_options = "--bare -o ./js"

au BufWritePost *.coffee silent CoffeeMake! | cwindow | redraw!
