require_relative './../spec_helper.rb'
 
describe HelpService do
  describe '#call' do
    it "Response have the main commands" do
      response = HelpService.call()
      expect(response).to match('help')
      expect(response).to match('Adicione ao Faq')
      expect(response).to match('Remova ID')
      expect(response).to match('O que você sabe sobre X')
      expect(response).to match('Pesquise a hashtag X')
      expect(response).to match('Perguntas e Respostas')
    end
  end
<<<<<<< HEAD
end
=======
end
>>>>>>> b20da557606d7268a67f9b531cb645d218c5a878
