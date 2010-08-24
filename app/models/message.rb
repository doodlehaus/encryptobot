require 'digest/sha2'
require 'encryptor'
class Message < ActiveRecord::Base      

  attr_accessor :message
                      
  def message=(mess)
    self.message_salt = [Array.new(6){rand(256).chr}.join].pack("m").chomp 
    self.message_hash = Encryptor.encrypt(mess, :key => self.message_salt)
  end
  
  def decrypted_message
     Encryptor.decrypt(self.message_hash, :key => self.message_salt)
  end                 
  
end
