[README.md](../README.md)

# Types
* What types does the language support?
* Are both reference and value types supported?
* Can new value types be created?

## C#
* **bool** - Boolean value	
* **byte** - 8-bit unsigned integer
* **char**	- 16-bit Unicode character
* **decimal** -	128-bit precise decimal values with 28-29 significant digits
* **double** - 64-bit double-precision floating point type
* **float** - 32-bit single-precision floating point type
* **int** - 32-bit signed integer type
* **long** - 64-bit signed integer type
* **sbyte** - 8-bit signed integer type
* **short** - 16-bit signed integer type
* **uint** - 32-bit unsigned integer type
* **ulong**	- 64-bit unsigned integer type
* **ushort** - 16-bit unsigned integer type

Reference: [TutorialPoint](https://www.tutorialspoint.com/csharp/csharp_data_types.htm)   

Both reference and value types are supported in C#.  There are two ways to allocating space in memory. One is value type and another is Reference type. When you create int, char or float type variable, it creates value type memory allocation whereas when you create object of class, it creates reference type memory allocation.
* **Value Type:** A value type variable directly contains data in the memory.
* **Reference Type:** A Reference type variable contains memory address of value.

Reference: [Complete C# Tutorial](https://www.completecsharptutorial.com/basic/valuetype-parameter)

Yes, you use the struct, class, interface, and enum constructs to create your own custom types. The .NET class library itself is a collection of custom types provided by Microsoft that you can use in your own applications. By default, the most frequently used types in the class library are available in any C# program. Others become available only when you explicitly add a project reference to the assembly in which they are defined. 

Reference: [C# Programming Guide](https://docs.microsoft.com/en-us/dotnet/csharp/programming-guide/types/)

## Swift
### Build-in Data Types
* **Int/UInt** − This is used for integer numbers. More specifically, you can use Int32, Int64 to define 32 or 64 bit signed integer, whereas UInt32 or UInt64 to define 32 or 64 bit unsigned integer variables.

* **Float** − This is used to represent a 32-bit floating-point number and numbers with smaller decimal points.

* **Double** − This is used to represent a 64-bit floating-point number and used when floating-point values must be very large. 

* **Bool** − This represents a Boolean value which is either true or false.

* **String** − This is an ordered collection of characters.

* **Character** − This is a single-character string literal. 

* **Optional** − This represents a variable that can hold either a value or no value.

* **Tuples** − This is used to group multiple values in single Compound Value.

Reference: [TutorialPoint](https://www.tutorialspoint.com/swift/swift_data_types.htm)

### Value and Reference Types
* `Struct`, `enum`, and tuple are value types
    * `Struct` can be used to created own value types
* `Class` is reference type
