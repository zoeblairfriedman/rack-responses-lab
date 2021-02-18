require 'pry'

class Application

    def call(env)
      resp = Rack::Response.new
  
    #   binding.pry 
        resp.write "The hour is #{Time.now.hour}\n" 
      if Time.now.hour < 12
        resp.write "Good Morning!"
      else
        resp.write "Good Afternoon!"
      end
  
      resp.finish
    end
  
  end