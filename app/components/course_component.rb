# frozen_string_literal: true

class CourseComponent < ViewComponent::Base
  with_collection_parameter :item
  def initialize(item:, notice:, item_counter:, item_iteration:)
    @item = item
    @notice = notice
    @counter = item_counter
    @iteration = item_iteration
  end
end
