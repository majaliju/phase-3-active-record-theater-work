class Role < ActiveRecord::Base
  has_many :auditions

  def actors
    self.auditions.pluck{:actor}
  end

  def locations
    self.auditions.pluck{:location}
  end

  def lead
    auditions = self.audition.filter {|audition| audition.hired}
    if audition
      audition
    else
      'no actor has been hired for this role'
    end
  end

  def understudy
    auditions = self.audition.filter {|audition| audition.hired}

    if auditions[1]
      auditions[1]
    else
      'no actor has been hired for this role'
    end
  end

end