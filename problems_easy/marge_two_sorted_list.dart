// /**
//  * Definition for singly-linked list.
//  * class ListNode {
//  *   int val;
//  *   ListNode? next;
//  *   ListNode([this.val = 0, this.next]);
//  * }
//  */
//
// class Solution {
//   ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
//
//   }
// }
//
// class ListNode {
//   int val;
//   ListNode? next;
//   ListNode([this.val = 0, this.next]);
//
//   int? len(){
//     var currentNext = next;
//     var countLen = 1;
//
//     while (currentNext != null) {
//       currentNext = currentNext.next;
//       countLen += 1;
//     }
//     return countLen;
//   }
//   @override
//   String toString() {
//     if (next == null) return '$val';
//     return '$val -> ${next.toString()}';
//   }
//
// }
//
// class LinkedList {
//   ListNode? head;
//   ListNode? tail;
//
//   bool get isEmpty => head == null;
//
//   void push(int value) {
//     head = ListNode(value, head);
//     tail ??= head;
//   }
//
//   void append(int value) {
//     // 1
//     if (isEmpty) {
//       push(value);
//       return;
//     }
//
//     // 2
//     tail!.next = ListNode(value);
//
//     // 3
//     tail = tail!.next;
//   }
//
//   //get length
//   int? len(){
//     var currentNode = head;
//     var countLen = 0;
//     while (currentNode != null ) {
//       currentNode = currentNode.next;
//       countLen += 1;
//     }
//     return countLen;
//   }
//
//   ListNode? nodeAt(int index) {
//     // 1
//     var currentNode = head;
//     var currentIndex = 0;
//
//     // 2
//     while (currentNode != null && currentIndex < index) {
//       currentNode = currentNode.next;
//       currentIndex += 1;
//     }
//     return currentNode;
//   }
//
//   ListNode insertAfter(ListNode node, int value) {
//     // 1
//     if (tail == node) {
//       append(value);
//       return tail!;
//     }
//
//     // 2
//     node.next = ListNode(value, node.next);
//     return node.next!;
//   }
//
//   int? pop() {
//     final value = head?.val;
//     head = head?.next;
//     if (isEmpty) {
//       tail = null;
//     }
//     return value;
//   }
//
//
//
//
//
//   @override
//   String toString() {
//     if (isEmpty) return 'Empty list';
//     return head.toString();
//   }
// }
//
//
// void main(){
//   final node1 = ListNode(1);
//   final node2 = ListNode(2);
//   final node3 = ListNode(3);
//
//   node1.next = node2;
//   node2.next = node3;
//
//   print(node1.len());
//   print(node1);
//
//   // final list = LinkedList();
//   // list.push(3);
//   // list.push(2);
//   // list.push(1);
//   //
//   // print(list);
//
//   // final list = LinkedList();
//   // list.append(1);
//   // list.append(2);
//   // list.append(3);
//   //
//   // print(list);
//
//   // final list = LinkedList();
//   // list.push(3);
//   // list.push(2);
//   // list.push(1);
//   // print(list.len())
//   // print('Before: $list');
//   //
//   // var middleNode = list.nodeAt(0)!;
//   // list.insertAfter(middleNode, 42);
//   //
//   // list.pop();
//   // print('After:  $list');
//
//
//
//
// }
//

class Node {
   int val;
   Node? next;
   Node([this.val = 0, this.next]);
  }
//
// class Node {
//   int data;
//   Node next;
//
//   Node(this.data);
// }

// Node? mergeLists(Node headA, Node headB) {
//   // A dummy node to store the result
//   Node dummyNode = Node();
//
//   // Tail stores the last node
//   Node? tail = dummyNode;
//   while (true) {
//     // If any of the list gets completely empty
//     // directly join all the elements of the other list
//     if (headA == null) {
//       tail?.next = headB;
//       break;
//     }
//     if (headB == null) {
//       tail?.next = headA;
//       break;
//     }
//
//     // Compare the data of the lists and append the smaller node
//     if (headA.val <= headB.val) {
//       tail?.next = headA;
//       headA = headA.next!;
//     } else {
//       tail?.next = headB;
//       headB = headB.next!;
//     }
//
//     // Advance the tail
//     tail = tail?.next;
//   }
//
//   // Returns the head of the merged list
//   return dummyNode.next;
// }

// Node? mergeLists(Node headA, Node headB) {
//   // A dummy node to store the result
//   Node dummyNode = Node();
//
//   // Tail stores the last node
//   Node? tail = dummyNode;
//   while (true) {
//     // Compare the data of the lists and append the smaller node
//     if (headA.val <= headB.val) {
//       tail?.next = headA;
//       headA = headA.next!;
//     } else {
//       tail?.next = headB;
//       headB = headB.next!;
//     }
//
//     // Advance the tail
//     tail = tail?.next;
//
//     // If any of the lists reach the end, directly join all the elements of the other list
//     if (headA == null) {
//       tail?.next = headB;
//       break;
//     }
//     if (headB == null) {
//       tail?.next = headA;
//       break;
//     }
//   }
//
//   // Returns the head of the merged list
//   return dummyNode.next;
// }
//
// Node? mergeLists(Node headA, Node headB) {
//   // A dummy node to store the result
//   Node dummyNode = Node();
//
//   // Tail stores the last node
//   Node? tail = dummyNode;
//
//   while (headA != null && headB != null) {
//     if (headA.val <= headB.val) {
//       tail?.next = headA;
//       headA = headA.next!;
//     } else {
//       tail?.next = headB;
//       headB = headB.next!;
//     }
//     tail = tail?.next;
//   }
//
//   // Attach remaining elements of list A or list B directly
//   tail?.next = headA != null ? headA : headB;
//
//   // Returns the head of the merged list
//   return dummyNode.next;
// }

// Node? mergeLists(Node headA, Node headB) {
//   // Check if either headA or headB is null, return the other list if one is null
//   if (headA == null) {
//     return headB;
//   }
//   if (headB == null) {
//     return headA;
//   }
//
//   // A dummy node to store the result
//   Node dummyNode = Node();
//   // Tail stores the last node
//   Node? tail = dummyNode;
//
//   while (headA != null && headB != null) {
//     if (headA.val <= headB.val) {
//       tail?.next = headA;
//       headA = headA.next!;
//     } else {
//       tail?.next = headB;
//       headB = headB.next!;
//     }
//     tail = tail?.next;
//   }
//
//   // Attach the remaining elements of list A or list B directly
//   tail?.next = headA ?? headB;
//
//   // Returns the head of the merged list
//   return dummyNode.next;
// }

/**
 * Definition for singly-linked list.
 */
class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    if (list1 == null) {
      return list2;
    }
    if (list2 == null) {
      return list1;
    }

    ListNode dummyNode = ListNode(0);
    ListNode? tail = dummyNode;

    ListNode? headA = list1;
    ListNode? headB = list2;

    while (headA != null && headB != null) {
      if (headA.val <= headB.val) {
        tail?.next = headA;
        headA = headA.next;
      } else {
        tail?.next = headB;
        headB = headB.next;
      }
      tail = tail?.next;
    }

    tail?.next = headA != null ? headA : headB;

    return dummyNode.next;
  }
}

// Usage example
void main() {
  Solution solution = Solution();

  // Define and initialize your linked list nodes
  ListNode node1 = ListNode(1);
  node1.next = ListNode(3);

  ListNode node2 = ListNode(2);
  node2.next = ListNode(4);

  // Merge two sorted linked lists
  ListNode? mergedList = solution.mergeTwoLists(node1, node2);

  // Print or process the merged list as needed
}