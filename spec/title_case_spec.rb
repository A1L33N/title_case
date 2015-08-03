require('rspec')
require('title_case')

describe('String#title_case') do
  it("capitalizes the first letter of a word") do
    expect(("hamlet").title_case()).to(eq("Hamlet"))
  end
end
