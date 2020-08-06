require 'sinatra'
require 'nokogiri'
require 'open-uri'
require 'json'

before do
  content_type 'application/json'
end

get '/api/v0/search' do
  search(params['pkg'])
end

def search(pkg)
  rows = []

  doc = Nokogiri::HTML(URI.open("https://pkgs.alpinelinux.org/packages?branch=edge&name=#{pkg}"))

  rows = doc.search('table.pure-table.pure-table-striped').search('tr')

  details = rows.map do |row|
    detail = {}
    row.css('td').each do |td|
      td_class = td.attr('class')
      td_text = td.inner_text.strip

      if td_text == 'No item found...'
        status 404
        return "Package #{pkg} not found\n"
      end

      detail[td_class] = td_text if td_class != 'url'
    end
    detail
  end.reject(&:empty?)

  JSON.pretty_generate(details)
end
