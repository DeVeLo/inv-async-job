class DecrementExampleJob < ApplicationJob
  def perform(example_id)
    example = Example.find_by(id: example_id)
    example.counter -= [ *(1..20) ].sample
    example.save!
  end
end
