class CommentPolicy < ApplicationPolicy
<<<<<<< HEAD
  def destroy?
    user.present? && (record.user == user || user.admin? || user.moderator?)
=======

  def create?
    user.present?
  end

  def new?
    create?
>>>>>>> assign-46
  end
end