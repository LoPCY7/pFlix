class Playtime
  include Mongoid::Document
  field :userid, type: Integer
  field :movieid, type: String
  field :movie_time, type: String
end
