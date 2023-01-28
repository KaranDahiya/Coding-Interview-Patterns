// e.g. Linked List Cycle

class Solution {
    fun hasCycle(head: ListNode?): Boolean {

        if (head == null) { return false }
        if (head!!.next == null) { return false }

        var slow: ListNode? = head
        var fast: ListNode? = head!!.next

        while (slow != null && fast != null) {
            if (slow == fast) { return true }
            slow = slow!!.next
            fast = fast!!.next?.next
        }

        return false
    }
}