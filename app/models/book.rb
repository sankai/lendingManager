class Book < ActiveRecord::Base
  has_many :lendings
  belongs_to :owner, :class_name => "User"
  
  def owner_name
    unless owner.nil?
      return owner.name
    end
    return ""
  end

  
  def self.from_csv(anArray)
    aBook = new
    aBook.name     = anArray[0].to_s.encode('utf-8', 'sjis')
    aBook.auhter   = anArray[1].to_s.encode('utf-8', 'sjis')
    aBook.isbn13   = anArray[2].to_s
    aBook.owner_id = anArray[3].to_i
    return aBook
  end

end
