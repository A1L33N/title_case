require('rspec')
require('title_case')

describe('String#title_case') do

  it("manages mixed cased entries") do
    expect(("heLLo WORLD").title_case()).to(eq("Hello World"))
  end

  it("capitalizes the first letter of a word") do
    expect(("hamlet").title_case()).to(eq("Hamlet"))
  end

  it ("capitalizes the first letter of every word") do
    expect(("ready player one").title_case()).to(eq("Ready Player One"))
  end

  it ("handles non-letter characters") do
    expect(("100 days of solitude").title_case()).to(eq("100 Days of Solitude"))
  end

  it("does not capitalize prepositions") do
    expect(("gone with the wind").title_case()).to(eq("Gone with the Wind"))
  end

  it("capitalizes designated words if they are the first word") do
    expect(("a tale of two cities").title_case()).to(eq("A Tale of Two Cities"))
  end
end
