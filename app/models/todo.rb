class Todo < ApplicationRecord
  validates_presence_of :name

  enum status: {
    incomplete: 0,
    complete: 1
  }
end
