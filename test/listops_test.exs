defmodule ListOpsTest do
    use ExUnit.Case
	
	describe "1.count" do
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
	end #describe "1.count" do
	
	describe "2.append" do
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
	end #describe "2.append" do
	
	describe "3.reverse" do
		@tag :pending
		test "3.1. The empty list" do
		  assert ListOps.reverse([]) == []
		end
		
		@tag :pending
		test "3.2. The normal list" do
		  assert ListOps.reverse([0, 1, 2, 3]) == [3, 2, 1, 0]
		end
		
		@tag :pending
		test "3.3. The list of lists is not flattened" do
		  assert ListOps.reverse([[0, 1], [2], [], [3, 4, 5]]) == [[3, 4, 5], [], [2], [0, 1]]
		end
		
		@tag :pending
		@tag :slow
		test "3.4. The huge list" do
		  assert ListOps.reverse(Enum.to_list(1..10000)) == Enum.to_list(10000..1)
		end
	end #describe "3.reverse" do
	
	describe "4.map" do
		@tag :pending
		test "4.1. The empty list" do
		  assert ListOps.map([], &(&1 + 1)) == []
		end
		
		@tag :pending
		test "4.2. The normal list" do
		  assert ListOps.map([0, 1, 2, 3], &(&1 + 1)) == [1, 2, 3, 4]
		end
		
		@tag :pending
		@tag :slow
		test "4.3. The huge list" do
		  assert ListOps.map(Enum.to_list(1..10000), &(&1 + 1)) == Enum.to_list(2..10001)
		end
	end #describe "4.map" do
	
end