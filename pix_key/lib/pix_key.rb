# frozen_string_literal: true

#APENAS UMA OBSERVAÇÃO
#Olá avaliadores, obrigado pelo seu tempo validando e lendo meu código
#Vi essa oportunidade no LinkedIn, nunca havia visto Ruby na vida.
#Dei cara a tapa nesse desafio e dei o meu melhor nele, estudei sem parar
#todos os dias desde 04/07/22, que foi quando me inscrevi para o desafio.
#Não está sendo nada fácil, mas sempre quis uma oportunidade para trabalhar como desenvolvedor, ainda mais remotamente
#Espero ter demonstrado um pouco do que uma semana de empenho minha pode agregar
#e ter conseguido demonstrar pra vocês que em 6 meses de treinamento, poderei agregar ainda mais valor a equipe, além de evoluir profissionalmente
#Também, devo frizar que, essa é uma oportunidade de mudar para melhor a vida da minha família, então não pude deixar de me dedicar.

#Mesmo se eu não conseguir a chance de conversar com vocês, agradeço de verdade a oportunidade, pois o aprendizado até aqui não se perderá
#Infelizmente, não consegui passar na validação de todos os testes, mas continuarei trabalhando arduamente.
#Att, Matheus Muniz.

class PixKey

    def initialize(key)
        @key = key
    end
  
    #Verifica se a chave PIX utilizada é válida
  
    def valid?
        if !@key.nil? && !@key.empty? && @key.is_a?(String) && @key.length > 10
            return true
        else
            return false
        end
    end
  
    # Retorna o valor e o transforma em string, freezando em seguida
  
    def value
        return @key.to_s.freeze
    end
    alias key value
  
    def to_s
        return @key.to_s.freeze
    end
  
    # Métodos para validar os tipos de chaves PIX
  
    def email?
        if !@key.nil? && !@key.empty?
            if @key =~ /[a-z0-9.]+@[a-z0-9]+\.[a-z]+\.?([a-z]+)?$/
                return true
            else
                return false
            end
        end
    end
  
    def cpf?
        if !@key.nil? && !@key.empty?
            if @key =~ /^[0-9]{11}$/
                return true
            else
                return false
            end
        end
    end
  
    def cnpj?
        if !@key.nil? && !@key.empty?
            if @key =~ /^[0-9]{14}$/
                return true
            else
                return false
            end
        end
    end
  
    def phone?
        if !@key.nil? && !@key.empty?
            if @key =~ /^\+[1-9][0-9]\d{1,14}$/
                return true
            else
                return false
            end
        end
    end

    def evp?
        if !@key.empty? && !@key.nil?
            if @key =~ /[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}/
                return true
            else
                return false
            end
        end
    end
  
    # Valida o tipo da chave pix de acordo com o informado pelo usuário
  
    def type
        if !@key.nil? && !@key.empty?
            if @key =~ /[a-z0-9.]+@[a-z0-9]+\.[a-z]+\.?([a-z]+)?$/
                return "email"
            elsif @key. =~ /^[0-9]{11}$/
                return "cpf"
            elsif @key =~ /^[0-9]{14}$/
                return "cnpj"
            elsif @key =~ /^\+[1-9][0-9]\d{1,14}$/
                return "phone"
            elsif @key =~ /[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}/
                return "evp"
            else
                return "invalid"
            end
        end
    end
end
  
  