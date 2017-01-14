require 'test_helper'

class ZgloszenieTest < ActiveSupport::TestCase
   test "the truth" do
     zgloszenie = Zgloszenie.new
     assert_not zgloszenie.save, "Saved the zgloszenie without a title"
   end
end
