# Elixir List Ops - Functional Programming
Implement basic list operations.
In functional languages list operations like length, map, and reduce are very common. 
Implement a series of basic list operations, without using existing functions.

The precise number and names of the operations to be implemented will be track 
dependent to avoid conflicts with existing names, but the general operations 
you will implement include:

- append (given two lists, add all items in the second list to the end 
  of the first list);
- concatenate (given a series of lists, combine all items in 
  all lists into one flattened list);
- filter (given a predicate and a list, return the list of all items 
  for which predicate(item) is True);
- length (given a list, return the total number of items within it);
- map (given a function and a list, return the list of the results 
  of applying function(item) on all items);
- foldl (given a function, a list, and initial accumulator, fold (reduce) 
  each item into the accumulator from the left using function(accumulator, item));
- foldr (given a function, a list, and an initial accumulator, fold (reduce) 
  each item into the accumulator from the right using function(item, accumulator));
- reverse (given a list, return a list with all the original items, but in reversed order);

## Elixir-specific changes
The above description of this exercise is shared between all Exercism tracks.

To be consistent with Elixir's standard library, the functions used by foldl and 
foldr should take the item as the first argument, and the accumulator as the second.

Additionally, in order not to conflict with the automatically imported 
function Kernel.length/1, the function counting the length will be named count instead.

## Slow tests
One or several of the tests of this exercise have been tagged as :slow, 
because they might take a long time to finish. For this reason, 
they will not be run on the platform by the automated test runner. 
If you are solving this exercise directly on the platform in the web editor, 
you might want to consider downloading this exercise to your machine instead. 
This will allow you to run all the tests and check the efficiency of your solution.

## Test
## $ mix test
Excluding tags: [:pending]

ListOpsTest [test/listops_test.exs]
  * test 3.reverse 3.2. The normal list (excluded) [L#60]
  * test 1.count 1.3. The huge list (excluded) [L#19]
  * test 5.filter 5.4. The truthy values filter the list (excluded) [L#112]
  * test 3.reverse 3.4. The huge list (excluded) [L#71]
  * test 8.reduce 8.2. The direction independent function applied to non-empty list (excluded) [L#172]
  * test 2.append 2.2. The empty and non-empty list (excluded) [L#31]
  * test 2.append 2.4. The non-empty lists (excluded) [L#41]
  * test 5.filter 5.2. The normal list (excluded) [L#101]
  * test 8.reduce 8.3. The direction dependent function applied to non-empty list (excluded) [L#177]
  * test 7.foldr 7.2. The direction independent function applied to non-empty list (excluded) [L#148]
  * test 5.filter 5.1. The empty list (excluded) [L#96]
  * test 4.map 4.2. The normal list (excluded) [L#83]
  * test 2.append 2.3. The non-empty and empty list (excluded) [L#36]
  * test 2.append 2.5. The huge lists (excluded) [L#47]
  * test 5.filter 5.3. The huge list (excluded) [L#107]
  * test 8.reduce 8.1. The empty list (excluded) [L#167]
  * test 4.map 4.1. The empty list (excluded) [L#78]
  * test 1.count 1.2. The normal list (excluded) [L#13]
  * test 9.concat 9.1. The empty list of lists (excluded) [L#191]
  * test 9.concat 9.2. The normal list of lists (excluded) [L#196]
  * test 7.foldr 7.4. The huge list (excluded) [L#159]
  * test 8.reduce huge list (excluded) [L#183]
  * test 6.foldl 6.3. The direction dependent function applied to non-empty list (excluded) [L#129]
  * test 7.foldr 7.3. The direction dependent function applied to non-empty list (excluded) [L#153]
  * test 6.foldl 6.1. The empty list (excluded) [L#119]
  * test 3.reverse 3.3. The list of lists is not flattened (excluded) [L#65]
  * test 6.foldl 6.2. The direction independent function applied to non-empty list (excluded) [L#124]
  * test 6.foldl huge list (excluded) [L#135]
  * test 9.concat 9.3. The list of nested lists (excluded) [L#201]
  * test 3.reverse 3.1. The empty list (excluded) [L#55]
  * test 2.append 2.1. The empty lists (excluded) [L#26]
  * test 7.foldr 7.1. The empty list (excluded) [L#143]
  * test 9.concat 9.4. The huge list of small lists (excluded) [L#207]
  * test 4.map 4.3. The huge list (excluded) [L#89]
  * test 1.count 1.1. The empty list (1.6ms) [L#8]

Finished in 0.06 seconds (0.00s async, 0.06s sync)
35 tests, 0 failures, 34 excluded


## $ mix test --include pending
Including tags: [:pending]

ListOpsTest [test/listops_test.exs]
  * test 8.reduce huge list (2.2ms) [L#183]
  * test 1.count 1.3. The huge list (84.7ms) [L#19]
  * test 7.foldr 7.3. The direction dependent function applied to non-empty list (0.00ms) [L#153]
  * test 2.append 2.3. The non-empty and empty list (0.00ms) [L#36]
  * test 5.filter 5.4. The truthy values filter the list (0.00ms) [L#112]
  * test 1.count 1.1. The empty list (0.00ms) [L#8]
  * test 5.filter 5.3. The huge list (0.8ms) [L#107]
  * test 3.reverse 3.1. The empty list (0.00ms) [L#55]
  * test 9.concat 9.1. The empty list of lists (0.00ms) [L#191]
  * test 9.concat 9.2. The normal list of lists (0.00ms) [L#196]
  * test 6.foldl 6.3. The direction dependent function applied to non-empty list (0.00ms) [L#129]
  * test 3.reverse 3.2. The normal list (0.00ms) [L#60]
  * test 6.foldl huge list (1.0ms) [L#135]
  * test 7.foldr 7.4. The huge list (1.1ms) [L#159]
  * test 7.foldr 7.1. The empty list (0.03ms) [L#143]
  * test 3.reverse 3.4. The huge list (437.3ms) [L#71]
  * test 5.filter 5.1. The empty list (0.00ms) [L#96]
  * test 1.count 1.2. The normal list (0.00ms) [L#13]
  * test 2.append 2.4. The non-empty lists (0.00ms) [L#41]
  * test 6.foldl 6.1. The empty list (0.00ms) [L#119]
  * test 3.reverse 3.3. The list of lists is not flattened (0.00ms) [L#65]
  * test 4.map 4.3. The huge list (1.0ms) [L#89]
  * test 8.reduce 8.2. The direction independent function applied to non-empty list (0.00ms) [L#172]
  * test 8.reduce 8.1. The empty list (0.00ms) [L#167]
  * test 9.concat 9.4. The huge list of small lists (12.6ms) [L#207]
  * test 9.concat 9.3. The list of nested lists (0.00ms) [L#201]
  * test 8.reduce 8.3. The direction dependent function applied to non-empty list (0.00ms) [L#177]
  * test 2.append 2.2. The empty and non-empty list (0.00ms) [L#31]
  * test 2.append 2.1. The empty lists (0.00ms) [L#26]
  * test 4.map 4.2. The normal list (0.00ms) [L#83]
  * test 7.foldr 7.2. The direction independent function applied to non-empty list (0.00ms) [L#148]
  * test 2.append 2.5. The huge lists (128.3ms) [L#47]
  * test 4.map 4.1. The empty list (0.00ms) [L#78]
  * test 5.filter 5.2. The normal list (0.00ms) [L#101]
  * test 6.foldl 6.2. The direction independent function applied to non-empty list (0.00ms) [L#124]

Finished in 0.7 seconds (0.00s async, 0.7s sync)
35 tests, 0 failures


## $ mix test --include slow
Excluding tags: [:pending]
Including tags: [:slow]

ListOpsTest [test/listops_test.exs]
  * test 4.map 4.2. The normal list (excluded) [L#83]
  * test 5.filter 5.1. The empty list (excluded) [L#96]
  * test 8.reduce 8.3. The direction dependent function applied to non-empty list (excluded) [L#177]
  * test 2.append 2.4. The non-empty lists (excluded) [L#41]
  * test 6.foldl 6.1. The empty list (excluded) [L#119]
  * test 9.concat 9.1. The empty list of lists (excluded) [L#191]
  * test 6.foldl 6.3. The direction dependent function applied to non-empty list (excluded) [L#129]
  * test 9.concat 9.3. The list of nested lists (excluded) [L#201]
  * test 3.reverse 3.1. The empty list (excluded) [L#55]
  * test 3.reverse 3.3. The list of lists is not flattened (excluded) [L#65]
  * test 8.reduce 8.2. The direction independent function applied to non-empty list (excluded) [L#172]
  * test 7.foldr 7.3. The direction dependent function applied to non-empty list (excluded) [L#153]
  * test 5.filter 5.4. The truthy values filter the list (excluded) [L#112]
  * test 4.map 4.1. The empty list (excluded) [L#78]
  * test 9.concat 9.2. The normal list of lists (excluded) [L#196]
  * test 6.foldl 6.2. The direction independent function applied to non-empty list (excluded) [L#124]
  * test 8.reduce 8.1. The empty list (excluded) [L#167]
  * test 2.append 2.2. The empty and non-empty list (excluded) [L#31]
  * test 5.filter 5.2. The normal list (excluded) [L#101]
  * test 3.reverse 3.2. The normal list (excluded) [L#60]
  * test 1.count 1.2. The normal list (excluded) [L#13]
  * test 7.foldr 7.1. The empty list (excluded) [L#143]
  * test 2.append 2.1. The empty lists (excluded) [L#26]
  * test 2.append 2.3. The non-empty and empty list (excluded) [L#36]
  * test 7.foldr 7.2. The direction independent function applied to non-empty list (excluded) [L#148]
  * test 5.filter 5.3. The huge list (3.8ms) [L#107]
  * test 6.foldl huge list (1.9ms) [L#135]
  * test 7.foldr 7.4. The huge list (1.3ms) [L#159]
  * test 2.append 2.5. The huge lists (112.4ms) [L#47]
  * test 8.reduce huge list (1.0ms) [L#183]
  * test 1.count 1.3. The huge list (81.9ms) [L#19]
  * test 9.concat 9.4. The huge list of small lists (10.1ms) [L#207]
  * test 1.count 1.1. The empty list (0.00ms) [L#8]
  * test 4.map 4.3. The huge list (1.0ms) [L#89]
  * test 3.reverse 3.4. The huge list (421.7ms) [L#71]

Finished in 0.7 seconds (0.00s async, 0.7s sync)
35 tests, 0 failures, 25 excluded












