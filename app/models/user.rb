class User < ApplicationRecord
  attr_reader :name,:age

  def initialize(name:,age:)
    @name=name
    @age=age
  end

  def desc_user
    case @age
    when 0..14
      "#{@name}ちゃん"
    when 15..19
      "#{@name}くん"
    when 20..100
      "#{@name}さん"
    end
  end
end
