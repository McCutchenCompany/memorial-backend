class MemoryMailer < ApplicationMailer
  default from: "mymemorial.help@gmail.com"

  def memory_approval_email(user, from, memory)
    @user = user
    @from = from
    @memory = memory
    @url = ENV['PAGE_URL']
    mail(to: @user.email, subject: "You have a new Memory about #{@memory.memorial[:first_name]} #{@memory.memorial[:last_name]}")
  end
  
  def memory_email(user, from, memory)
    @user = user
    @from = from
    @memory = memory
    @url = ENV['PAGE_URL']
    mail(to: @user.email, subject: "You have a new Memory about #{@memory.memorial[:first_name]} #{@memory.memorial[:last_name]}")
  end
end
