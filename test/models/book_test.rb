require 'test_helper'

class BookTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "can be persisted" do
    kafka_on_the_shore = Book.create!(name: "Kafka on the Shore")
    assert kafka_on_the_shore.persisted?
  end

  
end
