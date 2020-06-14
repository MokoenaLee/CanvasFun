
require 'rest-client'






=begin 
base url is https://canvas.instructure.com and since  going through the api,
added to this is the api doumentation format for a specific course
=end 

=begin 
#fetch existing course

get_response = RestClient.get('https://canvas.instructure.com/api/v1/courses/2106760', {:Authorization => 'Bearer 7~Ic2qTMmcJF3ci6LCGvf4Iw04XYdvKjeokVZzvsHOtJ1ppSLtXDLPo7bvacNC8XVq'})


puts "Response Code: #{get_response.code}"

#response of request returned in the body

puts get_response.body





/courses/:id


#body_response = response.body

=end 


#get_response = RestClient.put('https://canvas.instructure.com/api/v1/courses/2106760', {:Authorization => 'Bearer 7~Ic2qTMmcJF3ci6LCGvf4Iw04XYdvKjeokVZzvsHOtJ1ppSLtXDLPo7bvacNC8XVq', "course[name]=Art History"})


#puts "================results are============== #{get_response}"

#Update course settings

#update_response  = RestClient.get('https://canvas.instructure.com/api/v1/accounts/10/permissions', {:Authorization => 'Bearer 7~Ic2qTMmcJF3ci6LCGvf4Iw04XYdvKjeokVZzvsHOtJ1ppSLtXDLPo7bvacNC8XVq'})



put_response = RestClient::Request.execute(method: :put,
                                             url: 'https://canvas.instructure.com/api/v1/courses/2106760',
                                             payload: {"course[name]" => "Art History 101"},
                                             headers: {"Authorization" => "Bearer 7~Ic2qTMmcJF3ci6LCGvf4Iw04XYdvKjeokVZzvsHOtJ1ppSLtXDLPo7bvacNC8XVq"})

puts " Updated course name is #{put_response}"



# course[is_public_to_auth_users] only authenticated users
#puts put_response.body

