defmodule ListOps do
	@doc"""
    Please don't use any external modules (especially List) in your 
    implementation. The point of this exercise is 
    to create these basic functions yourself.
    Note that `++` is a function from an external module (Kernel, which is 
    automatically imported) and so shouldn't be used either.
    """
	
	# count of list
	@spec count(list) :: non_neg_integer
	def count(list) do
	    case list do
	      [] -> 0
	      [_|tail] -> 1 + count(tail)
	    end
  	end
	
	# append of list
	@spec append(list, list) :: list
	def append(list_a, list_b) do
	  case list_a do
	    [] -> list_b
	    [head|tail] -> [head|append(tail, list_b)]
	  end
	end
	
	# reverse of list
	@spec reverse(list) :: list
	def reverse(list) do
	  case list do
	    [] -> list
	    [head|tail] -> append(reverse(tail), [head])
	  end
	end
  
end
