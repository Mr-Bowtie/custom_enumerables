# Custom Ruby Enumerable Methods
This is a small project to re-write several common methods packed in the Enumerable module packaged with Ruby
---
All of these my custom methods behave as closely as possible to the original methods.  

All methods accept both array and hash callers.  

## Highlights
---
**#my_map** accepts either a proc or block. It can be called with both, but will only run the proc.  

**#my_inject** does accept both optional parameters, an initial value, and a symbol.  
This allows for one liners to sum all elements or an array, for example.  
```
  [1,2,3].my_inject(:+)
```
### NOTE:
(2021-8-31) This is a first pass with everything working. Refactoring very much needs to be done to tighten things up.
