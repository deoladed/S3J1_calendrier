require "pry"

class User
  attr_writer :mastercard #à mettre en en-tête de ta classe
  attr_reader :birthdate
  attr_accessor :email, :encrypted_password
    @@user_count = 0 # on initialise la variable de classe qui sera un compteur du nombre d'instance

  def initialize(email_to_save)
  	@email = email_to_save
  	@@user_count += 1 # un utilisateur vient d'être créé : on ajoute donc 1 au compteur
  	
  	if check_email(email_to_save) # on vérifie l’e-mail proposé
      @email = email_to_save #l’e-mail est ok => on le sauve dans l'instance
    else
      puts "ERREUR ! EMAIL FOIREUX. Recommence" #l’e-mail est non ok => message d'erreur
    end
  	puts "Email : Bienvenue !!"
  end

  def check_email(email_to_save)
    # du code pour vérifier l’e-mail (on ne rentre pas dans le détail)
    # si l’e-mail est ok, ça renvoie TRUE. Sinon FALSE
  end

  def self.count
  	return @@user_count
  end

  def show_itself
  	puts self
  end

  def update_birthdate(birthdate_to_update)
  	@birthdate = birthdate_to_update
  end

  def read_mastercard
  	return @mastercard
  end

  def greet
  	puts "Bonjour, monde !"
  end

  def say_hello_to_someone(first_name)
  	puts "Bonjour, #{first_name} !"
  end

  def show_itself
  	print "Voici l'instance : "
  	puts self
  end

  def update_email(email_to_update)
  	@email = email_to_update
  end

  def read_email
  	return @email
  end

  def change_password(new_password)
    @encrypted_password = encrypt(new_password)
  end
  
  def truc_public
    # on peut faire julie.truc_public
  end

  private #Toutes les méthodes en dessous de cette balise seront privées. A mettre en bas donc !

  def encrypt(string_to_encrypt)
    return "##ENCRYPTED##"
  end



end

# binding.pry
puts "end of file"