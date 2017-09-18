class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  DEFAULT_CSS_PATH = "app/assets/stylesheets/site"
  DEFAULT_INITIALIZER_PATH = "config/initializers/assets.rb"

end
