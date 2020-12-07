require 'pony'

my_mail = 'wakawakamur@gmail.com'

puts 'enter the password'
password = STDIN.gets.chomp

puts 'enter the adress'
send_to = STDIN.gets.chomp

puts 'text:'
body = STDIN.gets.chomp

Pony.mail(
{
  :subject => 'hi from ruby!',
  :body => body,
  :to => send_to,
  :from => my_mail,

  :via => :smtp,
  :via_options => {
      address: 'smtp.gmail.com',
      port: '587',
      user_name: 'mail@gmail.com',
      password: '###########',
      authentication: :plain,
      domain: 'mail.google.com'
  }


}
  )
