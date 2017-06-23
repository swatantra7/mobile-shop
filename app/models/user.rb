class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :people

  accepts_nested_attributes_for :people

  def password_required?
    if !persisted?
      false
    else
      !password.nil? || !password_confirmation.nil?
    end
  end

  def attempt_set_password(params)
    password_attributes = {}
    password_attributes[:password] = params[:password]
    password_attributes[:password_confirmation] = params[:password_confirmation]
    update_attributes(password_attributes)
  end

  def has_no_password?
    self.encrypted_password.blank?
  end

  def only_if_unconfirmed
    pending_any_confirmation { yield }
  end

  def cart_count
    $redis.scard "cart#{id}"
  end

end
