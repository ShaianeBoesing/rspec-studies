class Person
  attr_accessor :nome, :idade
  attr_reader :status

  def happy! 
    @status = "feeling happy!"
  end

  def sad! 
    @status = "feeling sad!"
  end

end