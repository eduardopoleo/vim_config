class Challenge
  has_many :activities, inverse_of: :challenge
end

class Activity
  belongs_to :challenge, inverse_of: :activities
end

c = Challenge.first
a = c.activities.first

