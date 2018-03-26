[README.md](../README.md)

# Comparisons of references and values
* How are values compared?(i.e. comparing two strings)

## C#


## Swift
Swift supports all standard C comparison operators:

* Equal to (a == b)
* Not equal to (a != b)
* Greater than (a > b)
* Less than (a < b)
* Greater than or equal to (a >= b)
* Less than or equal to (a <= b)

For value types comparison, we can definitely use the above operators. The "==" also works for string value
comparison.

If we want to compare the reference of objects, swift has operators "===" and "!==" for it.

Pay attention: String in swfit is a **_value_** type, not like java it is a reference type. We can't compare them using "===".