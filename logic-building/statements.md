# Logic Building — Problem Set

A running list of logic-building problems solved (or to be solved) outside
the main lesson sequence. These reinforce loops, recursion, strings,
arrays, and hash maps using real practice, not just theory.

## Sorting Algorithms (manual implementation)

- [x] **Bubble Sort** — sort a `List<int>` using nested loops and
      swapping, no built-in `.sort()`.
- [x] **Merge Sort** — sort a `List<int>` using recursion (split, sort
      each half, merge back together), no built-in `.sort()`.

## Search Algorithms

- [x] **Linear Search** — find the index of a target value in a list by
      checking each element one by one. Return `-1` if not found.
- [x] **Binary Search** — find the index of a target value in a
      **sorted** list using low/high pointers, halving the search range
      each step. Return `-1` if not found.

## Loop and Recursion Drills

- [x] **Sum of 1 to N (loop)** — sum all numbers from 1 to N using a
      `for` loop.
- [x] **Sum of 1 to N (recursive)** — same result, using recursion.
- [x] **Factorial (recursive)** — compute `n!` using recursion.
- [x] **Factorial (loop)** — compute `n!` using a `for` loop.
- [x] **Fibonacci sequence (loop)** — print the first N Fibonacci
      numbers using a loop.
- [x] **Fibonacci (recursive)** — return the nth Fibonacci number using
      recursion (two recursive calls combined).
- [x] **Reverse a number** — reverse the digits of a number (e.g.
      `12345` → `54321`) using `%` and `~/`, no string conversion.
- [x] **Count digits (recursive)** — count how many digits a number has,
      using recursion only.
- [x] **Power function (recursive)** — compute `base^exponent`
      recursively, no built-in power function.
- [x] **Countdown (recursive)** — print numbers from N down to 1, then
      print `"Liftoff!"`, using recursion only.

## Arrays / Lists

- [x] **Find the maximum** — find the largest value in a `List<int>`
      using a loop only (no built-in max).
- [x] **Find the minimum** — find the smallest value in a `List<int>`
      using a loop only.
- [x] **Sum of all elements** — add up every value in a `List<int>`
      using a loop.
- [x] **Count even and odd numbers** — given a list, count how many
      values are even and how many are odd.
- [x] **Remove duplicates from a List** — given a list with repeated
      values, print a version with duplicates removed.
- [x] **Reverse a List manually** — reverse a `List<int>` using a loop,
      no built-in `.reversed`.

## Strings

- [x] **Palindrome check** — check if a string reads the same forwards
      and backwards (cleaned of case and spaces). *(done earlier)*
- [x] **Count vowels** — count how many vowels (a, e, i, o, u,
      case-insensitive) appear in a string.
- [x] **Count word occurrences** — given a sentence, count how many
      times a specific word appears (case-insensitive).
- [x] **Capitalize each word** — given a lowercase sentence, capitalize
      the first letter of every word.
- [x] **Find the longest word in a sentence** — find and print the
      longest word in a given sentence.

## Hash Maps (Dart `Map`)

- [x] **Character frequency counter** — build a `Map<String, int>`
      counting how many times each character appears in a string.
- [x] **Word frequency counter** — build a `Map<String, int>` counting
      how many times each word appears in a sentence.
- [x] **Find first non-repeating character** — using a `Map`, find the
      first character in a string that appears exactly once.
- [x] **Group numbers by even/odd** — build a `Map<String, List<int>>`
      with keys `"even"` and `"odd"`, grouping numbers from a list
      accordingly.
