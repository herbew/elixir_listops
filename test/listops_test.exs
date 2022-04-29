defmodule ListOpsTest do
    use ExUnit.Case
	
	describe "1. .count" do
	    # @tag :pending
	    test "1.1. The empty list" do
	      assert ListOps.count([]) == 0
	    end#
	
	    @tag :pending
	    test "1.2. The normal list" do
	      assert ListOps.count([0, 1, 2]) == 3
	    end
	
	    @tag :pending
	    @tag :slow
	    test "1.3. The huge list" do
	      assert ListOps.count(Enum.to_list(1..10000000)) == 10000000
	    end
	end #describe "count" do
	
end