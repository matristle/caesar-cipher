## Caesar Cipher

## Project Status
- [x] Exercise Done - 11/4/2022
- [x] Basic Tests Added

*I might need to make the testing more inclusive.*

## Reflection

### The Exercise Itself

  It was the first time I was prompted to use some of the basic concepts I learned in the Basic Ruby section.

  The objective was to make a method that takes in a string and shift the substrings/letters to form a cipher in Caesar fashion.

  It made me think about how to use Ruby's features as opposed to JavaScript, and adopt its intricacies.

  A significant obstacle I encountered was to figure out how to cycle through the shift, since the ASCII letter ordinal numbers ranged between `65 to 90` and `97 to 122`. For instance, if the ordinal number corresponding to the letter "Z" is 90, and we wanted to have a shift factor of 1, the shifted ordinal number would be out of range (`90 + 1`, which would not be in the above ranges). I thought of exploiting the modulo operation, but I discarded the idea to complete the exercise in a rather DIY manner, which was unnecessary after all.

### Testing: the Sequel 

After going through a lot of stubborn obstacles from that point onwards, it cycled from `65 to 90` to `97` (an attempt to simultaneously reference the previous section and my journey). The first Ruby testing prompt to the first testing Ruby prompt.

The objective here was to make tests for the exercise to get my feet wet with RSpec, the unit testing framework for Ruby.

The main difficulty in this prompt was figuring out the structure for the tests and knowing when to stop with the test examples. While scanning for the exercise code, I tried to break cases down in plain English. I initially had much more sub cases for each case and more examples for each sub case. I did not test in whole strings `fou` because I thought it was unnecessary when I had tested the substrings themselves `f` - `o` - `u`, since I had a sub-method called `check_and_transform` that handled substrings one-by-one. This might turn out to be impractical for most cases and even in this case itself.