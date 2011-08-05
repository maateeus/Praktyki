# == Schema Information
# Schema version: 20110703130826
#
# Table name: rezults
#
#  id         :integer         not null, primary key
#  nazwa      :string(255)
#  opis       :string(255)
#  p1_id      :integer
#  created_at :datetime
#  updated_at :datetime
#

class Rezult < ActiveRecord::Base
  attr_accessible :nazwa, :opis, :p1_id
  belongs_to :p1

    validates :nazwa, :presence => true, :length => { :maximum => 255 }
  validates :opis, :presence => true, :length => { :maximum => 255 }
  validates :p1_id, :presence => true
  
  default_scope :order => 'rezults.created_at DESC'
  
   def self.get(nazwa)
    rezult = find_by_nazwa(nazwa)
    return nil  if rezult.nil?
    return rezult if rezult.has_nazwa?(nazwa)
  end
  
end
