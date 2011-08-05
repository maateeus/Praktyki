# == Schema Information
# Schema version: 20110704205735
#
# Table name: relationships
#
#  id            :integer         not null, primary key
#  subproblem_id :integer
#  problem_id    :integer
#  nazwa         :string(255)
#  opis          :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

class Relationship < ActiveRecord::Base
  attr_accessible :problem_id, :subproblem_id, :nazwa, :opis
  
  
  belongs_to :subproblem, :class_name => "Problem", :dependent => :destroy
  belongs_to :problem, :class_name => "Problem" 
  
  
  validates :subproblem_id, :presence => true
  validates :problem_id, :presence => true
  
end
