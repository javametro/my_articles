## const's function
* pass to parameter (reference or value)
	* the parameter can't be change
* const return value
* const function
	* this function will not change any member variable of this class.
	* only call another const function
	* const can overloaded with non const function.
	
* const : A compile time constraint that an object can not be modified.
* if const is on the left of *, data is const
* if const is on the right of *, pointer is const.
* const_cast<int &>(i) = 6; can change <const int i=9;>
