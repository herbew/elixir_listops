defmodule ListOps do
	@doc "Please don't use any external modules (especially List) in your " <> \
	"implementation. The point of this exercise is " <> \ 
	"to create these basic functions yourself.\n\n" <> \
	"Note that `++` is a function from an external module (Kernel, which is " <> \
	"automatically imported) and so shouldn't be used either."
	
	# count of list
	@spec count(list) :: non_neg_integer
	def count(list) do
	    case list do
	      [] -> 0
	      [_|tail] -> 1 + count(tail)
	    end
  	end
	
	
  
end
