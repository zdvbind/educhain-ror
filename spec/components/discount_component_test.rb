require "rails_helper"

RSpec.describe DiscountComponent, type: :component do
  it "renders the component correctly" do
    course = Course.create(title: 'Organizing your Time', price: 155.00, location: 'London')
    render_inline(DiscountComponent.new(item: course))

    expect(rendered_content).to have_css "p[class='text-green-700 ms-2']", text: "10% discount"
    expect(rendered_content).to have_css "img[width='4%']"
  end
end
