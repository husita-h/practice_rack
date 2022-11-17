module Auth
  class CustomeBasicAuth
    def basic_auth
      raise NotImplementedError
    end

    def authorized?
      raise NotImplementedError
    end
  end
end
