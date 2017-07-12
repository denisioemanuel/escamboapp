class Admin < ApplicationRecord
  enum role: [:full_access, :restricted_access]

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def role_pt
  	if self.role == 'full_access'
  		"Acesso Total"
  	else
  		"Acesso Restrito"
  	end
  end
end
