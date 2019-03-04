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
    @users = User.where(uuid: memories.map{|m| m.user_id})
    memories.each { |memory,index|
      entry = memory.as_json
      user = @users.select {|u| u.uuid == memory.user_id}
      user = user[0]
      entry[:first_name] = user[:first_name]
      entry[:last_name] = user[:last_name]
      @memories.push(entry)
    }
    @memories
  end
end
