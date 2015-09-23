class Persona

  #attr_accessor :last_name, :first_name

  def initialize(last_name, first_name)
    # Instance variables
    @last_name = last_name
    @first_name = first_name
  end

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def first_name=(value)
      @first_name = value
  end

  def last_name=(value)
      @last_name = value
  end

end