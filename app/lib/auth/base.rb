module Auth
  module Base
    def basic_auth
      raise NotImplementedError
    end

    def authorized?
      raise NotImplementedError
    end
  end
end
