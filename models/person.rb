require 'active_model'

class Person

  include ActiveModel::Validations

  validates_length_of :name, :maximum => 40, :message => 'name too long'

  attr_reader :name

  def initialize(attrs)
    @name = attrs[:name]
  end

end
