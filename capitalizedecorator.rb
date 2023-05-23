require './basedecator'

class CapitalizeDecorator < BaseDecator
  def correct_name
    @nameable.correct_name.upcase
  end
end
