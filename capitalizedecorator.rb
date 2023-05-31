require_relative './basedecator'

class CapitalizeDecorator < BaseDecator
  def correct_name
    @nameable.correct_name.capitalize
  end
end
