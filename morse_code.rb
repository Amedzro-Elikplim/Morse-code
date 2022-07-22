def decode_char(morse_code)
  dict =
    {
      '.-' => 'a',
      '-...' => 'b',
      '-.-.' => 'c',
      '-..' => 'd',
      '.' => 'e',
      '..-.' => 'f',
      '--.' => 'g',
      '....' => 'h',
      '..' => 'i',
      '.---' => 'j',
      '-.-' => 'k',
      '.-..' => 'l',
      '--' => 'm',
      '-.' => 'n',
      '---' => 'o',
      '.--.' => 'p',
      '--.-' => 'q',
      '.-.' => 'r',
      '...' => 's',
      '-' => 't',
      '..-' => 'u',
      '...-' => 'v',
      '.--' => 'w',
      '-..-' => 'x',
      '-.--' => 'y',
      '--..' => 'z'
    }

  print dict[morse_code].upcase
end

decode_char('.-')

def decode_word(morse_code)
  word = morse_code.split(' ')
    .map { |char| decode_char(char) }
    .join()
  print "#{word} "
end

decode_word('-- -.--')

def decode(morse_code)
  sentence = morse_code.split('  ')
    .map { |word| decode_word(word) }
    .join()
  print sentence
end

decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
