require 'sinatra'

def get_birth_path_num(birthdate)
number = birthdate[0] + birthdate [1] + birthdate[2] + birthdate [3]
birthdate [4] + birthdate [5] + birthdate [6] + birthdate [7]


number = number.to_s
number = number[0].to_i + number[1].to_i


		if number > 9
		number = number[0].to_i + number[1].to_i
end
 	
 		return number
end
		def get_message(birth_path_num)

case birth_path_num
when number = 1 
    message = "Your bible number is #{number}. \nThe number of UNITY One Lord, One Faith and One Baptism."
when number = 2 
    message = "Your bible number is #{number}. \nThe number of DIVISION. There are Two Testaments. The old Testaments
    and the new testament."
when number = 3 
    message = "Your bible number is #{number}. \n The number of DIVINE PERFECTION.The TRINITY is the FATHER, the SON and 
    the HOLY SPIRIT. Also 3 qualities of the universe. TIME SPACE MATTER ."
when number = 4  
    message = "Your bible number is #{number}. \nThis is the number of CREATION. (FOUR SEASONS)(NORTH SOUTH EAST WEST)."

when number = 5  
     message = "Your bible number is #{number}. \nThis is the number of GRACE. Also the HOLY ANNOINTING OIL consisted of 
     pure myrrh, cinnamon, cane, cassia and olive oil."

when number = 6 
     message = "Your bible number is #{number}. \nThis is the number of MAN. Man was created on day 6. 6th COMMANDMENT: Thou 
     shalt not murder."

when number = 7 
     message = "Your bible number is #{number}. \n It is the number of SPIRITUAL PERFECTION. There are 7 days in a week: 7 colors in
     the spectrum. 7 Seals, 7 Trumpets, 7 parables in book of Matthew."
when number = 8  
     message = "Your bible number is #{number}. \nThis is the number of NEW BEGINNINGS. There were also 8 people on Noah's Ark." 
when number = 9  
 message = "Your bible number is #{number}. \nThis is the number of JUDGMENT."
when number = 10  
 message = "Your bible number is #{number}. \n This is the number of DIVINE PERFECTION.
 There are 10 commandments. There are 10 I AM's spoken by Jesus. 
 : I AM the Bread of Life: I AM the Bread of Life which came down from HEAVEN. I AM the LIVING Bread: I AM the LIGHT OF THE WORLD.
 I AM the ONE that bears witness of MYSELF: I AM the DOOR of the SHEEP: I am the GOOD SHEPHERD: I AM the RESURRECTION and the LIFE: 
 I AM the WAY, the TRUTH and the LIFE. I am the TRUE VINE."
else
     message = "I hope you did find the number you were looking for."

end
end 


get '/:birthdate' do 
    birthdate = params[:birthdate]
    birth_path_num = get_birth_path_num(birthdate)
    message = get_message(birth_path_num)
	"#{message}"
	
end