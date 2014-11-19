require 'test_helper'

class CastMemberTest < ActiveSupport::TestCase
	test "there should be 100 cast members" do
		assert_equal 100, CastMember.count
	end
end
