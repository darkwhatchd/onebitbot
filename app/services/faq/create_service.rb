module FaqModule
<<<<<<< HEAD
  class CreateService
    def initialize(params)
      @question = params["question"]
      @answer = params["answer"]
      @hashtags = params["hashtags"]
    end

    def call
      return 'Hashtag Obrigatória' if @hashtags == nil
      Faq.transaction do
        faq = Faq.create(question: @question, answer: @answer)
        @hashtags.split(/[\s,]+/).each do |hashtag|
          faq.hashtags << Hashtag.find_or_create_by(name: hashtag)
        end
      end
      'Criado com sucesso'
    end
  end
end
=======
    class CreateService
      def initialize(params)
        @question = params["question"]
        @answer = params["answer"]
        @hashtags = params["hashtags"]
      end
   
   
      def call
        return 'Hashtag Obrigatória' if @hashtags == nil
        Faq.transaction do
          faq = Faq.create(question: @question, answer: @answer)
          @hashtags.split(/[\s,]+/).each do |hashtag|
            faq.hashtags << Hashtag.find_or_create_by(name: hashtag)
          end
        end
        "Criado com sucesso"
      end
    end
  end
>>>>>>> b20da557606d7268a67f9b531cb645d218c5a878
