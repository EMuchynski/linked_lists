Linked Lists project from The Odin Project's [curriculum](http://www.theodinproject.com/courses/ruby-programming/lessons/linked-lists?ref=lnav).
Your Task

You will need two classes:

1. LinkedList class, which will represent the full list.
2. Node class, containing a #value method and a link to the #next_node, set both as nil by default.

Build the following methods in your linked list class:

1. #append adds a new node to the end of the list
2. #prepend adds a new node to the start of the list
3. #size returns the total number of nodes in the list
4. #head returns the first node in the list
5. #tail returns the last node in the list
6. #at(index) returns the node at the given index
7. #pop removes the last element from the list
8. #contains? returns true if the passed in value is in the list and otherwise returns false.
9. #find(data) returns the index of the node containing data, or nil if not found.
10. #to_s represent your LinkedList objects as strings, so you can print them out and preview them in the console. The format should be: ( data ) -> ( data ) -> ( data ) -> nil
