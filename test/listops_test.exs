defmodule ListOpsTest do
    use ExUnit.Case
	
	describe "count" do
	    # @tag :pending
	    test "empty list" do
	      assert ListOpsTest.count([]) == 0
	    end#
	
	    @tag :pending
	    test "normal list" do
	      assert ListOpsTest.count([1, 2, 3, 4]) == 4
	    end
	
	    @tag :pending
	    @tag :slow
	    test "huge list" do
	      assert ListOpsTest.count(Enum.to_list(1..1_000_000)) == 1_000_000
	    end
	end #describe "count" do
	
end