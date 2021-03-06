PADRINO_ROOT = File.dirname(__FILE__) unless defined? PADRINO_ROOT
# Remove this comment if you want do some like this: ruby PADRINO_ENV=test app.rb
#
# require 'rubygems'
# require 'padrino-core'
#

class SimpleDemo < Padrino::Application
  set :reload, true
  before { true }
  after  { true }
  error(404) { "404" }
end

SimpleDemo.controllers do
  get "/" do
    'The magick number is: 724274705032786548110472817755585178605481536388041566742570203174924198689!' # Change only the number!!!
  end

  get "/rand" do
    rand(2 ** 256).to_s
  end
end

## If you want use this as a standalone app uncomment:
#
# Padrino.mount("SimpleDemo").to("/")
# Padrino.run! unless Padrino.loaded? # If you enable reloader prevent to re-run the app
#
# Then run it from your console: ruby -I"lib" test/fixtures/apps/simple.rb
#

Padrino.load!
