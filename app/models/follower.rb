class Follower
  attr_reader :login, :uid

  def initialize(attributes)
    @login = attributes[:login]
    @uid = attributes[:id]
  end

  def has_account
    User.exists?(uid: @uid)
  end
end
