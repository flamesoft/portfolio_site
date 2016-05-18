###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
require 'extensions/build_cleaner'
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.deploy_method = :git
end

configure :build do
  activate :relative_assets
  activate :build_cleaner
end

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end
