class Example < ApplicationRecord
  after_create_commit :increment
  after_create_commit :decrement

  private
  def increment
    IncrementExampleJob.perform_later(id)
  end

  def decrement
    DecrementExampleJob.perform_later(id)
  end
end
