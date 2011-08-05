# == Schema Information
# Schema version: 20110702164321
#
# Table name: problems
#
#  id         :integer         not null, primary key
#  nazwa      :string(255)
#  opis       :string(255)
#  p1_id      :integer
#  created_at :datetime
#  updated_at :datetime
#

class Problem < ActiveRecord::Base
  attr_accessible :nazwa, :opis, :p1_id
  belongs_to :p1
  has_many :prezults,:dependent => :destroy
  
  has_many :relationships, :foreign_key => "subproblem_id",
                           :dependent => :destroy
  
  has_many :following, :through => :relationships, :source => :problem
    has_many :reverse_relationships, :foreign_key => "problem_id",
                                   :class_name => "Relationship",
                                   :dependent => :destroy
  has_many :subproblems, :through => :reverse_relationships, :source => :subproblem
  
  
  
  
  validates :nazwa, :presence => true, :length => { :maximum => 255 }
  validates :opis, :presence => true, :length => { :maximum => 255 }
 # validates :p1_id, :presence => true
  
  default_scope :order => 'problems.created_at DESC'
  
  
   def following?(problem)
    relationships.find_by_problem_id(problem)
  end

  def follow!(problem)
    relationships.create!(:problem_id => problem.id)
  end
  def unfollow!(problem)
    relationships.find_by_problem_id(problem).destroy
  end
  
   def self.get(nazwa)
    problem = find_by_nazwa(nazwa)
    return nil  if problem.nil?
    return problem if problem.has_nazwa?(nazwa)
  end
end
