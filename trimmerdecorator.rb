require_relative './basedecator'
require_relative './nameable'

class TrimmerDecorator < BaseDecator
  def correct_name
    @nameable.correct_name.slice(0, 10)
  end
end
