class Encryptor
  PASSWORD_LENGTH = 10
  PARTIAL_PASSWORD_LENGTH = 3

  def initialize(password)
    @K = random_number

    @R = {}
    PARTIAL_PASSWORD_LENGTH.times do |n|
      @R[n] = random_number
    end

    @s = {}

    PARTIAL_PASSWORD_LENGTH.times do |n|
      @s[n] = calculate_y(n) - password[n].to_i
    end
  end

  def valid?(args)

    y = {}

    PARTIAL_PASSWORD_LENGTH.times do |n|

    end

    true
  end

  private

  def calculate_y(x)
    y = @K + @R.map do |n, r|
      r * x ** n
    end.inject(&:+)
  end

  def random_number
    10_000_000_000 + rand(('9' * 10).to_i)
  end
end
