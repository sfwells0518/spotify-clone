class TracksController < ApplicationController
  require "uri"
  require "net/http"
  require "openssl"

  url = URI("https://spotify23.p.rapidapi.com/tracks/?ids=4WNcduiCmDNfmTEz7JvmLv")

  http = Net::HTTP.new(url.host, url.port)
  http.use_ssl = true
  http.verify_mode = OpenSSL::SSL::VERIFY_NONE

  request = Net::HTTP::Get.new(url)
  request["X-RapidAPI-Key"] = "11cafce7c3mshcd465a518ff2660p1c26ffjsn95ee6a6c9002"
  request["X-RapidAPI-Host"] = "spotify23.p.rapidapi.com"

  response = http.request(request)
  puts response.read_body
end
