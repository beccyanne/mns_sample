class User
  def initialize(user={})
    @user = user
  end

  def title
    @user.fetch('title'.to_sym, '')
  end

  def body
    @user.fetch('body'.to_sym, '')
  end

  def user_id
    @user.fetch('userId'.to_sym, '')
  end  
end