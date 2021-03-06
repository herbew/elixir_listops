defmodule ListOpsTest do
    use ExUnit.Case
	
	defp odd?(n), do: rem(n, 2) == 1
	
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
	
	describe "5.filter" do
		@tag :pending
		test "5.1. The empty list" do
		  assert ListOps.filter([], &odd?/1) == []
		end
		
		@tag :pending
		test "5.2. The normal list" do
		  assert ListOps.filter([0, 1, 2, 3, 4, 5], &odd?/1) == [1, 3, 5]
		end
		
		@tag :pending
		@tag :slow
		test "5.3. The huge list" do
		  assert ListOps.filter(Enum.to_list(1..10000), &odd?/1) == Enum.map(1..5000, &(&1 * 2 - 1))
		end
		
		@tag :pending
		test "5.4. The truthy values filter the list" do
		  assert ListOps.filter([true, false, nil, 0, 1, ""], & &1) == [true, 0, 1, ""]
		end
	end #describe "5.filter" do
	
	describe "6.foldl" do
		@tag :pending
		test "6.1. The empty list" do
		  assert ListOps.foldl([], 3, &(&1 + &2)) == 3
		end
		
		@tag :pending
		test "6.2. The direction independent function applied to non-empty list" do
		   assert ListOps.foldl([0, 1, 2], 8, &(&1 + &2)) == 11
		end
		
		@tag :pending
		test "6.3. The direction dependent function applied to non-empty list" do
		  assert ListOps.foldl([3, 4], 12, &(&1 / &2)) == 16
		end
		
		@tag :pending
		@tag :slow
		test "huge list" do
		  assert ListOps.foldl(Enum.to_list(1..10000), 0, &(&1 + &2)) ==
		           List.foldl(Enum.to_list(1..10000), 0, &(&1 + &2))
		end
	end #describe "6.foldl" do
	
	describe "7.foldr" do
		@tag :pending
		test "7.1. The empty list" do
		  assert ListOps.foldr([], 5, &(&1 * &2))
		end
		
		@tag :pending
		test "7.2. The direction independent function applied to non-empty list" do
		  assert ListOps.foldr([1, 2, 3, 4], 8, &(&1 + &2)) == 18
		end
		
		@tag :pending
		test "7.3. The direction dependent function applied to non-empty list" do
		  assert ListOps.foldr([1, 2, 3, 4], 16, &(&1 / &2)) == 6
		end
		
		@tag :pending
		@tag :slow
		test "7.4. The huge list" do
		  assert ListOps.foldr(Enum.to_list(1..10000), 0, &(&1 + &2)) ==
		           List.foldr(Enum.to_list(1..10000), 0, &(&1 + &2))
		end
	end #describe "7.foldr" do
	
	describe "8.reduce" do
		@tag :pending
		test "8.1. The empty list" do
		  assert ListOps.reduce([], 3, &(&1 + &2)) == 3
		end
		
		@tag :pending
		test "8.2. The direction independent function applied to non-empty list" do
		   assert ListOps.reduce([0, 1, 2], 8, &(&1 + &2)) == 11
		end
		
		@tag :pending
		test "8.3. The direction dependent function applied to non-empty list" do
		  assert ListOps.reduce([3, 4], 12, &(&1 / &2)) == 16
		end
		
		@tag :pending
		@tag :slow
		test "huge list" do
		  assert ListOps.reduce(Enum.to_list(1..10000), 0, &(&1 + &2)) ==
		           Enum.reduce(Enum.to_list(1..10000), 0, &(&1 + &2))
		end
	end #describe "8.reduce" do
	
	describe "9.concat" do
		@tag :pending
		test "9.1. The empty list of lists" do
		  assert ListOps.concat([]) == []
		end
		
		@tag :pending
		test "9.2. The normal list of lists" do
		  assert ListOps.concat([[1], [], [2,3], [4, 5, 6]]) == [1, 2, 3, 4, 5, 6]
		end
		
		@tag :pending
		test "9.3. The list of nested lists" do
		  assert ListOps.concat([[[1], [2]], [[3]], [[]], [[[4, 5, 6]]]]) == [[1], [2], [3], [], [[4, 5, 6]]]
		end
		
		@tag :pending
		@tag :slow
		test "9.4. The huge list of small lists" do
		  assert ListOps.concat(Enum.map(1..100000, &[&1])) == Enum.to_list(1..100000)
		end
	end #describe "9.concat" do
end