module Codebreaker
  class ValidatableEntity

    def initialize
      @errors = []
    end

    def validate
      raise NotImplementedError
    end

    def valid?
      validate
      @errors.empty?
    end
  end
end
