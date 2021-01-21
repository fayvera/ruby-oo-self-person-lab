# your code goes here

require 'pry'
class Person
attr_accessor :bank_account, :friend
attr_reader :name, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8 
    end
        
  
    def happiness=(happy)
        if happy < 0
            @happiness = 0
        elsif happy > 10
            @happiness = 10
        else 
            @happiness = happy 
        end
    end     

    def hygiene=(h)
        if h < 0
            @hygiene = 0
        elsif h > 10 
            @hygiene = 10  
        else
            @hygiene = h
        end 
    end

# non-attribute methods

    def happy?
        if @happiness > 7
            true
        else 
            false
        end
    end

     def clean?
        if @hygiene > 7 
            true
        else 
            false
        end
    end

    def get_paid(salary)
        self.bank_account = bank_account+salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene = self.hygiene+4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness = self.happiness + 2
        self.hygiene = self.hygiene - 3
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness = self.happiness + 3
        friend.happiness = friend.happiness + 3
        return "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(conversation_starter, topic)
        if topic == "politics"
            # binding.pry
            self.happiness =(self.happiness-2)
            conversation_starter.happiness =(conversation_starter.happiness-2)
            # binding.pry
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness = self.happiness + 1
            conversation_starter.happiness = (conversation_starter.happiness + 1)
            return "blah blah sun blah rain"   
        else 
            return "blah blah blah blah blah" 
        end
    end
    
  
end
