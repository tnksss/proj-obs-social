module VotesHelper
    def councilman_value(v, c, attribute)
        vote = v.votes.find_by(councilman_id: c.id)
        return "" if vote.nil?
          
        vote.send(attribute)
    end



    def human_attribute_votes
        Hash[Vote.votes.map { |k,v| [k, Vote.human_attribute_name("vote.#{k}")] }]
    end
end
