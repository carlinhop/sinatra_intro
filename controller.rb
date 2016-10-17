require('sinatra')
require('json')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('./models/word_formatter')

#require_relative('')

get "/"  do
  erb(:home)  
end

get "/address" do
  content_type(:json)
  data =     {
        address: '3 ARGYLE HOUSE',
        building: 'CODEBASE',
        postcode: 'e13 zqf',
        phone: '0131558030'
    }
    return data.to_json
end

get "/address/:postcode" do
  content_type(:json)
  data =     {
        address: '3 ARGYLE HOUSE',
        building: 'CODEBASE',
        postcode: WordFormatter.upcase(params[:postcode]),
        phone: '0131558030'
    }
    return data.to_json
end

get "/camelcase/:text" do
  content_type(:json)
  data = params[:text]
  return WordFormatter.camelcase(data).to_json
end