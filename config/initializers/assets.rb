# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
css_file = %w( templates/index.css templates/blog.css ) 
css_file += %w( site/about_the_creation_of_this_blog.css site/free_will.css )
css_file += %w( site/kamakura.css site/my_2016_recap.css site/imagination.css site/hardships.css )
Rails.application.config.assets.precompile += css_file