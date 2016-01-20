class Lending < ActiveRecord::Base
  belongs_to :media, :class_name => "Book"
  belongs_to :user
  #belongs_to :book
  
  def media_name
    unless media.nil?
      return media.name
    end
    return ""
  end

  def user_name
    unless user.nil?
      return user.name
    end
    return ""
  end

end
