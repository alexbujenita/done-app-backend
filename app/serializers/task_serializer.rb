class TaskSerializer < ActiveModel::Serializer
  attributes :id, :content, :end_date, :completed, :priority
  has_one :user
end
