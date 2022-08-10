# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(_user)
    can :access, :rails_admin
    can :manage, :all
  end
end
