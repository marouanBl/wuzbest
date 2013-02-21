# encoding: utf-8 
class Message < ActiveRecord::Base 

  attr_accessible  :id, :subject, :content, :is_seen, :sender_id, :reciever_id, :first_delete_id, :second_delete_id, :message, :message_id

  belongs_to :sender, class_name: 'User' 
  belongs_to :reciever, class_name: 'User' 
  belongs_to :first_delete, class_name: 'User' 
  belongs_to :second_delete, class_name: 'User' 
  has_and_belongs_to_many :messages 
  has_and_belongs_to_many :admin_contacts 


end