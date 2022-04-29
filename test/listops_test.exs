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
	      assert ListOps.count(Enum.to_list(1..1000000)) == 1000000
	    end
	end #describe "count" do
	
	describe "2. .append" do
		@tag :pending
		test "2.1. The empty lists" do
		  assert ListOps.append([], []) == []
		end
		
		@tag :pending
		test "2.2. The empty and non-empty list" do
		  assert ListOps.append([], [0, 1, 2]) == [0, 1, 2]
		end
		
		@tag :pending
		test "2.3. The non-empty and empty list" do
		  assert ListOps.append([0, 1, 2], []) == [0, 1, 2]
		end
		
		@tag :pending
		test "2.4. The non-empty lists" do
		  assert ListOps.append([0, 1, 2], [3, 4, 5]) == [0, 1, 2, 3, 4, 5]
		end
		
		@tag :pending
		@tag :slow
		test "2.5. The huge lists" do
		  assert ListOps.append(Enum.to_list(1..1000), Enum.to_list(1001..1000000)) ==
		           Enum.to_list(1..1000000)
		end
	end #describe "2. .append" do
	
end