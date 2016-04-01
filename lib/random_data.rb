module RandomData

  def self.random_word
    letters = ('a'..'z').to_a
    letters.shuffle!
    letters[0,rand(8..9)].join
  end

  def random_name
    first_name = random_word.capitalize
    last_name = random_word.capitalize
    "#{first_name} #{last_name}"
  end

  def random_email
   "#{random_word}@#{random_word}.#{random_word}"
  end

  def random_int
    rand(0..9)
  end

  def random_phone_number
    "#{random_int}#{random_int}#{random_int}-#{random_int}#{random_int}#{random_int}-#{random_int}#{random_int}#{random_int}#{random_int}"
  end
end
