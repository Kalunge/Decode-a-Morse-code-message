@alphabets = { '.-': 'A', '-...': 'B', '-.-.': 'C', '-..': 'D',
               '.': 'E', '..-.': 'F', '--.': 'G', '....': 'H', '..': 'I',
               '.---': 'J', '-.-': 'K', '.-..': 'L', '--': 'M', '-.': 'N',
               '---': 'O', '.--.': 'P', '--.-': 'Q', '.-.': 'R', '...': 'S',
               '-': 'T', '..-': 'U', '...-': 'V', '.--': 'W', '-..-': 'X', '-.--':
  'Y', '--..': 'Z' }

def decode_char(letter_morse)
  @alphabets[letter_morse.to_sym]
end

def decode_word(word_morse)
  letters = word_morse.split.map { |letter_morse| decode_char(letter_morse) }
  letters.join
end

def decode_morse_msg(msg_morse)
  result_array = []
  result_morse = msg_morse.split('   ')
  result_morse.each do |msg|
    result = decode_word(msg)
    result_array.push(result)
    result_array.push(' ')
  end
  result_array.join
end

puts decode_morse_msg('-- -.--   -. .- -- .   .. ...   - .. - ..- ...')
puts decode_morse_msg('-- -.--   -. .- -- . ')
puts decode_morse_msg('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...')
