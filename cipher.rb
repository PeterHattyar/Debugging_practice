def encode(plaintext, key)
    cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
    ciphertext_chars = plaintext.chars.map do |char|
      (65 + cipher.find_index(char)).chr
    end
    return ciphertext_chars.join
  end
  
  def decode(ciphertext, key)
    cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
    plaintext_chars = ciphertext.chars.map do |char|
      cipher[(char.ord - 65)]
    end
    return plaintext_chars.join
  end
  
  # Intended output:
  #
  # > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
  # => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
  #
  # > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
  # => "theswiftfoxjumpedoverthelazydog"

#   Original Broken Code

#   def encode(plaintext, key)
#     cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
#     ciphertext_chars = plaintext.chars.map do |char|
#       (65 + cipher.find_index(char)).chr
#     end
#     return ciphertext_chars.join
#   end
  
#   def decode(ciphertext, key)
#     cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
#     plaintext_chars = ciphertext.chars.map do |char|
#       cipher[65 - char.ord]
#     end
#     return plaintext_chars.join
#   end 