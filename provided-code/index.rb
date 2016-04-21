require 'sinatra'

def get_birth_path_num(birthdate)
    number = birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i + birthdate[3].to_i + birthdate[4].to_i + birthdate[5].to_i + birthdate[6].to_i + birthdate[7].to_i

    number = number.to_s
    number = number[0].to_i + number[1].to_i

    if number > 9
        number = number.to_s
        number = number[0].to_i + number[1].to_i
    end

    return number
end

def get_message(birth_path_num)
  case birth_path_num
  when 1 
    message = "Your bible number is #{birth_path_num}. \nThe number of UNITY One Lord, One Faith and One Baptism."
    when 2 
    message = "Your bible number is #{birth_path_num}. \nThe number of DIVISION. There are Two Testaments, the old and new Testament."
    when 3 
    message = "Your bible number is #{birth_path_num}. \n The number of DIVINE PERFECTION.The TRINITY is the FATHER, the SON and 
    the HOLY SPIRIT. Also three qualities of the universe. TIME SPACE MATTER ."
    when 4  
    message = "Your bible number is #{birth_path_num}. \nThis is the number of CREATION. There are Four seasons and NORTH SOUTH EAST WEST."
    when 5  
     message = "Your bible number is #{birth_path_num}. \nThis is the number of GRACE. Also the HOLY ANNOINTING OIL consisted of 
     pure myrrh, cinnamon, cane, cassia and olive oil."
    when 6 
     message = "Your bible number is #{birth_path_num}. \nThis is the number of MAN. Man was created on day Six. The Sixth COMMANDMENT, Thou 
     shalt not murder."
    when 7 
     message = "Your bible number is #{birth_path_num}. \n It is the number of SPIRITUAL PERFECTION. There are seven days in a week, seven colors in
     the spectrum. Seven Seals, Seven Trumpets, Seven parables in book of Matthew."
    when 8  
     message = "Your bible number is #{birth_path_num}. \nThis is the number of NEW BEGINNINGS. There were also eight people on Noah's Ark." 
    when 9  
    message = "Your bible number is #{birth_path_num}. \nThis is the number of JUDGMENT."
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