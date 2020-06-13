require 'rest-client '
require 'uri'
require 'net/http'


url = URI('https://canvas.instructure.com/api/v1/courses/2106760')



=begin 
base url is https://canvas.instructure.com and since  going through the api,
added to this is the api doumentation format for a specific course
=end 

response = RestClient.get url, {:Authorization => 'Bearer 7~Ic2qTMmcJF3ci6LCGvf4Iw04XYdvKjeokVZzvsHOtJ1ppSLtXDLPo7bvacNC8XVq'}

response.code