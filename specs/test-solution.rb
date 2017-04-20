require 'minitest/autorun'
require 'minitest/reporters'
#below should be changed when testing recursive solution
require_relative '../lib/solution'
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "Test Implementation of digit-match" do
  it "passes test cases" do
    a1 = [10, 20, 30, 40, 50, 60]
    a2 = [10, 20, 30, 40, 50, 60]
    a3 = [20, 3, 50, 10, 68]
    arrayEquals(a1, a2).must_equal(true)
    arrayEquals(a2, a1).must_equal(true)
    arrayEquals(a1, a3).must_equal(false)
  end

  it "works even if one array has extra values" do
    a1 = [10, 20, 30, 40, 50, 60]
    a2 = [10, 20, 30, 40, 50, 60, 1]
    arrayEquals(a1, a2).must_equal(false)
  end
end
