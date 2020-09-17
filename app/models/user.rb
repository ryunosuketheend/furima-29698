class User < ApplicationRecord

    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable
    validates :password, length: { minimum: 6 }
    
    VALID_PASSWORD_REGEX =/\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?[\d])\w{6,12}\z/
    validates :password, presence: true,
              format: { with: VALID_PASSWORD_REGEX,
               message: "は半角6文字以上英大文字・小文字・数字それぞれ１文字以上含む必要があります"}
    validates :nickname, :birthday, :last_name, :last_name_katakana, :first_name, :first_name_katakana, :email, :password,  presence: true
    
    VALID_PASSWORD_REGEX =/\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+\z/
    validates :first_name, :last_name, presence: true,
              format: { with: VALID_PASSWORD_REGEX,
               message: "は全角(漢字、ひらがな、カタカナ)である必要があります"}
    
    VALID_PASSWORD_REGEX =/\A[ァ-ヶー－]+\z/
    validates :first_name_katakana, :last_name_katakana, presence: true,
              format: { with: VALID_PASSWORD_REGEX,
               message: "は全角(カタカナ)である必要があります"}
  
  
end
