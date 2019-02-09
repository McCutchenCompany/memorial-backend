# Preview all emails at http://localhost:3000/rails/mailers/memory_mailer
class MemoryMailerPreview < ActionMailer::Preview
  def memory_approval_mail_preview
    MemoryMailer.memory_approval_email(User.find_by(uuid: "14d7a5a5-8538-4986-9fe6-48f31d9f28b9"), User.find_by(uuid: "90b179e0-ed5d-47d7-a0c1-d3361f2cf74f"), Memory.find_by(uuid: "288a86f1-68ef-42c2-94a9-be17fbe3885c"))
  end

  def memory_mail_preview
    MemoryMailer.memory_email(User.find_by(uuid: "14d7a5a5-8538-4986-9fe6-48f31d9f28b9"), User.find_by(uuid: "90b179e0-ed5d-47d7-a0c1-d3361f2cf74f"), Memory.find_by(uuid: "288a86f1-68ef-42c2-94a9-be17fbe3885c"))
  end

end
