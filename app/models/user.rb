class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable, :validatable
  has_many :carts
  has_one :current_cart, class_name: "Cart"

  def create_current_cart
    self.current_cart = self.carts.build
  end

  def remove_current_cart
    self.current_cart = nil
  end

end
