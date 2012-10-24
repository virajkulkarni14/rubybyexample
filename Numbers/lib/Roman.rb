class Roman

  #Hash of numeral constants
  ARABIC_TO_ROMAN = {
    1000 => 'M',
    500 => 'D',
    100 => 'C',
    50 => 'L'
    10 => 'X'
    5 => 'V'
    1 => 'I'
    0 => ''
  }

  #Hash to represent IV, IX, etc.
  SUBTRACTIVE_TO_ROMAN = {
    900 => 'CM'
    400 => 'CD'
    90 => 'XC'
    40 => 'XL'
    9 => 'IX'
    4 => 'IV'
  }

  #S_TO_R enabled?
  SUBTRACTIVE = true

  def to_roman
    @@roman_of ||= create_roman_of
    unless (self > 0)
      return ''
    if self > max_num
      return to_s
    base = @@roman_of.keys.sort.reverse.detect{ |k| k <= self }
    unless (base and base > 0)
      return ''
    return ((@@roman_of[base] * round_to_base(base)) + (self % base).to_roman)
  end

  private

  def create_roman_of
    unless SUBTRACTIVE
      return ARABIC_TO_ROMAN
    ARABIC_TO_ROMAN.merge(SUBTRACTIVE_TO_ROMAN)
  end

  def max_num
    (@@roman_of.keys.max * 5) - 1
  end

  def round_to_base(base)
    (self - (self % base)) / base
  end

end