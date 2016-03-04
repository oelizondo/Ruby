class Cipher
  @mutated = []

  def self.cipher(str)
    str.downcase.codepoints.map do |char|
       if char.between?(97, 122)
          char = char - 32
          @mutated << char.chr
        else
          @mutated << char.chr
        end
    end
    @mutated.join('')
  end
end

puts Cipher.cipher('hel/lo')