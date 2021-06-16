class Job < ApplicationRecord
  belongs_to :consultation
  belongs_to :client
  belongs_to :employee


 def timetotal
  (self.end_time - self.start_time)/3600
 end

 def sumtotal
  self.client.hourly_rate * self.timetotal.to_i
 end

end
