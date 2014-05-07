class Student < ActiveRecord::Base
  belongs_to :term
  has_many :studentlogs

  # CSVの1行をもとにインスタンスを作って返す
  def self.from_csv(anArray)
    m = new
    m.name    = anArray[0].to_s.encode('utf-8', 'sjis')
    m.desc    = anArray[1].to_s.encode('utf-8', 'sjis')
    m.term_id = anArray[2]
    return m    	
  end

end
