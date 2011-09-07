module PopulateVirtues
  
  class << self
    def go
      [["Temperance", "Eat not to dullness; drink not to elevation."],
      ["Silence", "Speak not but what may benefit others or yourself; Avoid trifling Conversation."],
      ["Order", "Let all your things have their places; let each part of your business have its time."],
      ["Resolution", "Resolve to perform what you ought; perform without fail what you resolve."],
      ["Frugality", "Make no expense but to do good to others or yourself; i.e., waste nothing."],
      ["Industry", "Lose no time. Be always employed in something useful. Cut off all unnecessary actions."],
      ["Sincerity", "Use no hurtful deceit; think innocently and justly, and, if you speak, speak accordingly."],
      ["Justice", "Wrong none by doing injuries, or omitting the benefits that are your duty."],
      ["Moderation", "Avoid extreams; forbear resenting injuries so much as you think they deserve."],
      ["Cleanliness", "Tolerate no uncleanliness in body, cloaths, or habitation."],
      ["Tranquility", "Be not disturbed at trifles, or at accidents common or unavoidable."],
      ["Chastity", "Rarely use venery but for health or offspring, never to dulness, weakness, or the injury of your own or another's peace or reputation."],
      ["Humility", "Imitate Jesus and Socrates."]].each do |name, description|
        Virtue.create! :name => name, :description => description
      end
    
    
    end
    
  end
  
  
end