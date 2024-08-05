
users = [
  {username: "Dias", password: "1234567"},
  {username: "Arney", password: "7654321"},
  {username: "Mario", password: "123"}
]

puts "WELCOME TO THE AUTHENTICATOR"
25.times {print "-"}
puts
puts "This programa will take input from user and compare password"
puts "If the password is correct, you will get back the user object"

def auth_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record [:username] == username && user_record [:password] == password
      return user_record
    end
  end
  "Credentials were not correct"
end

attempts = 1

while attempts < 4
  print "Username: "
  u = gets.chomp
  print "Password: "
  pas = gets.chomp
  authentication = auth_user(u, pas, users)
  puts authentication
  puts "Press n to quit or any other key to continue"
  input = gets.chomp.downcase
  break if input == "n"
  attempts +=1
end

puts "You have exceeded the number of attempts" if attempts == 4
