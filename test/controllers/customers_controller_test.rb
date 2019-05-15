require "test_helper"

describe CustomersController do
  describe "index" do
    # These tests are a little verbose - yours do not need to be
    # this explicit.
    it "is a real working route" do
      get customers_path
      must_respond_with :success
    end

    it "returns json" do
      get customers_path
      expect(response.header["Content-Type"]).must_include "json"
    end

    it "returns an Array" do
      get customers_path

      body = JSON.parse(response.body)
      body.must_be_kind_of Array
    end

    it "returns all of the movies" do
      get customers_path

      body = JSON.parse(response.body)
      body.length.must_equal Customer.count
    end

    it "returns customers with exactly the required fields" do
<<<<<<< HEAD
      keys = %w(address city movies_checked_out_count name phone postal_code registered_at state)
=======
      keys = %w(address city id name phone postal_code registered_at state)
>>>>>>> 864e9ad3f43c946e11c84b031389090cfec51ad8
      get customers_path
      body = JSON.parse(response.body)
      body.each do |customer|
        customer.keys.sort.must_equal keys
      end
    end
  end
end
