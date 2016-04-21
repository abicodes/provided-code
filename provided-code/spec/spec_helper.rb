
# we need to tell Rack (remember what Rack is?) that we are just testing.
# normally this is 'development'
ENV['RACK_ENV'] = 'test'

# look in this directory!
$:.unshift File.join(File.dirname(__FILE__))
require_relative File.join(File.dirname(__FILE__), "../index")  # <-- your sinatra app

# require testing gems
require 'rspec'
require 'rack/test'


module SpecHelper
  include Rack::Test::Methods  
  # Rack::Test looks for this app variable
  def app
    Sinatra::Application
  end
    
  # I'm being lazy a.k.a thinking like a programmer
  # Let's map the numerology number to the message with a hash
  # To stretch yourself, you could try this in your web app!
  NUMEROLOGY = {
    "1" => { birthdate: "12151999", message: "The number of UNITY One Lord, One Faith and One Baptism."},
    "2" => { birthdate: "12161999", message: "The number of DIVISION. There are Two Testaments, the old and new Testament."},
    "3" => { birthdate: "12171999", message: "The number of DIVINE PERFECTION.The TRINITY is the FATHER, the SON and 
    the HOLY SPIRIT. Also three qualities of the universe. TIME SPACE MATTER ." },
    "4" => { birthdate: "12181999", message:  "This is the number of CREATION. There are Four seasons and NORTH SOUTH EAST WEST."},
    "5" => { birthdate: "12191999", message: "This is the number of GRACE. Also the HOLY ANNOINTING OIL consisted of 
     pure myrrh, cinnamon, cane, cassia and olive oil."},
    "6" => { birthdate: "12111999", message: "This is the number of MAN. Man was created on day Six. The Sixth COMMANDMENT, Thou 
     shalt not murder."},
    "7" => { birthdate: "12121999", message: "It is the number of SPIRITUAL PERFECTION. There are seven days in a week, seven colors in
     the spectrum. Seven Seals, Seven Trumpets, Seven parables in book of Matthew."},
    "8" => { birthdate: "12131999", message: "This is the number of NEW BEGINNINGS. There were also eight people on Noah's Ark."},
    "9" => { birthdate: "12141999", message: "This is the number of JUDGMENT."}
  }  
end
