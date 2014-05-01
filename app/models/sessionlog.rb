class Sessionlog < ActiveRecord::Base
  belongs_to :classwork

  def leadingContents
    unless self.contents.blank? 
      return self.contents.slice(0,40)
    else
      return ''
    end
  end

end
