class InterpretService
<<<<<<< HEAD
  def self.call action, params
    case action
    when "list", "search", "search_by_hashtag"
      FaqModule::ListService.new(params, action).call()
    when "create"
      FaqModule::CreateService.new(params).call()
    when "remove"
      FaqModule::RemoveService.new(params).call()
    when "help"
      HelpService.call()
    else
      "Não compreendi o seu desejo"
    end
  end
end
=======
    def self.call action, params
      case action
      when "list", "search", "search_by_hashtag"
        FaqModule::ListService.new(params, action).call()
      when "create"
        FaqModule::CreateService.new(params).call()
      when "remove"
        FaqModule::RemoveService.new(params).call()
      when "help"
        HelpService.call()
      else
        "Não compreendi o seu desejo"
      end
    end
  end
>>>>>>> b20da557606d7268a67f9b531cb645d218c5a878
