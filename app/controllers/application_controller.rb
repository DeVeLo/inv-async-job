class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  # allow_browser versions: :modern
  def root
    @example = Example.create!(counter: 1)
    sleep 1
    @example_delayed = Example.find_by(id: @example.id)
  end
end
