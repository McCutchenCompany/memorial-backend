class Memory < ApplicationRecord
  include UUID

  belongs_to :memorial
  belongs_to :user

  def self.check_permission(user, memory)
    if @memorial = Memorial.find_by(uuid: memory[:memorial_id])
      if @memorial[:user_id] == user[:uuid]
        return true
      else
        return false
      end
    end
  end

  def self.map_names(memories)
    @memories = []
    memories.each { |memory,index|
      entry = memory.as_json
      entry[:first_name] = memory.user[:first_name]
      entry[:last_name] = memory.user[:last_name]
      @memories.push(entry)
    }
    @memories
  end
end
