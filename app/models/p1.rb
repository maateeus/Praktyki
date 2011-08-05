# == Schema Information
# Schema version: 20110704205735
#
# Table name: p1s
#
#  id         :integer         not null, primary key
#  nazwa      :string(255)
#  opis       :string(255)
#  image      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class P1 < ActiveRecord::Base
   attr_accessible :nazwa, :opis,:image
   
   has_many :problems , :dependent => :destroy
  has_many :rezults , :dependent => :destroy
  
   validates :nazwa,  :presence => true,
                    :length   => { :maximum => 255 }
  validates :opis, :presence => true
  
  
  def self.get(nazwa)
    p1 = find_by_nazwa(nazwa)
    return nil  if p1.nil?
    return p1 if p1.has_nazwa?(nazwa)
  end
end
