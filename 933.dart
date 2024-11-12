import 'dart:collection'; 
class RecentCounter {
    Queue<int> q = Queue<int>();
    RecentCounter();
    
    // ping method
    int ping(int t) {
        q.add(t);

        while (q.isNotEmpty && q.first<t-3000) {
            q.removeFirst();
        }
        return q.length;

  }
}

/**
 * Your RecentCounter object will be instantiated and called as such:
 * RecentCounter obj = RecentCounter();
 * int param1 = obj.ping(t);
 */
