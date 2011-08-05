# == Schema Information
# Schema version: 20110704205735
#
# Table name: prezults
#
#  id         :integer         not null, primary key
#  nazwa      :string(255)
#  opis       :string(255)
#  problem_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class Prezult < ActiveRecord::Base
  

  attr_accessible :nazwa, :opis, :problem_id
  belongs_to :p1

    validates :nazwa, :presence => true, :length => { :maximum => 255 }
  validates :opis, :presence => true, :length => { :maximum => 255 }
  validates :problem_id, :presence => true
  
  default_scope :order => 'prezults.created_at DESC'
  
   def self.get(nazwa)
    prezult = find_by_nazwa(nazwa)
    return nil  if prezult.nil?
    return prezult if prezult.has_nazwa?(nazwa)
  end
  

  
end
