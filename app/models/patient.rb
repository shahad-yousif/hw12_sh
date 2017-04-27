class Patient < ActiveRecord::Base
     belongs_to :doctor
    validates :first_name, length: { minimum: 2 }
    validates :last_name, length: { minimum: 2 }
    validates :first_name, length: { maximum: 10 }
    validates :last_name, length: { maximum: 10 }
    validates_presence_of :doctor_id
    validates_uniqueness_of :doctor_id, scope:  [:first_name, :last_name ]
    validates_uniqueness_of :email, :case_sensitive => false
    validates_format_of :email, :with => /\A([^@\s]+)@((gmail)\.+com)\Z/i, :on => :create,:message =>"must be in @gmail.com"
    validates_format_of :phone_number, with: /\A\d{3}-\d{3}-\d{4}\z/
    

end
