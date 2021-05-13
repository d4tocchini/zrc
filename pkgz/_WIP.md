
## c

unrolled skip list library for C
https://github.com/silentbicycle/skiparray
skip list is a probabilistic data structure that allows
Thus it can get the best features of a sorted array (for searching) while maintaining a linked list-like structure that allows insertion, which is not possible in an array. Fast search is made possible by maintaining a linked hierarchy of subsequences, with each successive subsequence skipping over fewer elements than the previous one (see the picture below on the right).
Lucene uses skip lists to search delta-encoded posting lists in logarithmic time
Skip lists are also used in distributed applications (where the nodes represent physical computers, and pointers represent network connections) and for implementing highly scalable concurrent priority queues with less lock contention,[21] or even without locking,[22][23][24] as well as lock-free concurrent dictionaries.[25] There are also several US patents for using skip lists to implement (lockless) priority queues and concurrent dictionaries.[26]

Skip graph
https://en.wikipedia.org/wiki/Skip_graph
Skip graphs have the full functionality of a balanced tree in a distributed system. Skip graphs are mostly used in searching peer-to-peer networks. As they provide the ability to query by key ordering, they improve over search tools based on the hash table functionality only. In contrast to skip lists and other tree data structures, they are very resilient and can tolerate a large fraction of node failures. Also, constructing, inserting, searching and repairing a skip graph that was disturbed by failing nodes can be done by straightforward algorithms.
They are one of several methods to implement a distributed hash table, which are used to locate resources stored in different locations across a network, given the name (or key) of the resource. Skip graphs offer several benefits over other distributed hash table schemes such as Chord (peer-to-peer) and Tapestry (DHT), including addition and deletion in expected logarithmic time, logarithmic space per resource to store indexing information, no required knowledge of the number of nodes in a set and support for complex range queries. A major distinction from Chord and Tapestry is that there is no hashing of search keys of resources, which allows related resources to be near each other in the skip graph; this property makes searches for values within a given range feasible. Another strength of skip graphs is the resilience to node failure in both random and adversarial failure models.


    http://ticki.github.io/blog/skip-lists-done-right/
    https://brilliant.org/wiki/skip-lists/


    a skip list is a data structure that allows {\displaystyle {\mathcal {O}}(\log n)}{\mathcal {O}}(\log n) search complexity as well as {\displaystyle {\mathcal {O}}(\log n)}{\mathcal {O}}(\log n) insertion complexity within an ordered sequence of {\displaystyle n}n elements.
    Thus it can get the best features of an array (for searching) while maintaining a linked list-like structure that allows insertion- which is not possible in an array

    "We used skiplists in front of a traditional B+tree engine in WiredTiger (the storage engine behind MongoDB).
    One comment: while it's relatively easy to make forward traversal of a skiplist lockless, making reverse traversal lockless is actually quite difficult.
    It would be an interesting addition to the article to show both lockless insert and lockless traversal (especially lockless reverse traversal). There's an implementation of lockless reverse traversal inside WiredTiger that I'd be happy to generalize if you're interested in updating the article.""

    Self-balancing Binary Search Trees often have complex algorithms to keep the tree balanced, but skip lists are easier: They aren’t trees, they’re similar to trees in some ways, but they are not trees.

     Skip lists are wonderful as an alternative to Distributed Hash Tables. Performance is mostly about the same, but skip lists are more DoS resistant if you make sure that all links are F2F.
     Each node represents a node in the network. Instead of having a head node and a nil node, we connect the ends, so any machine can search starting at it self:
     If you want a secure open system, the trick is that any node can invite a node, giving it a level equal to or lower than the level itself. If the node control the key space in the interval of A to B, we partition it into two and transfer all KV pairs in the second part to the new node. Obviously, this approach has no privilege escalation, so you can’t initialize a sybil attack easily.

    By apply a lot of small, subtle tricks, we can drastically improve performance of skip lists, providing a simpler and faster alternative to Binary Search Trees.

    Flat arrays
If we are interested in compactness and have a insertion/removal ratio near to 1, a variant of linked memory pools can be used: We can store the skip list in a flat array, such that we have indexes into said array instead of pointers.

Unrolled lists
Unrolled lists means that instead of linking each element, you link some number of fixed-size chuncks contains two or more elements (often the chunk is around 64 bytes, i.e. the normal cache line size).

Unrolling is essential for a good cache performance. Depending on the size of the objects you store, unrolling can reduce cache misses when following links while searching by 50-80%.
Searching is done over the skip list, and when a candidate is found, the chunk is searched through linear search. To insert, you push to the chunk (i.e. replace the first free space). If no excessive space is available, the insertion happens in the skip list itself.
Note that these algorithms requires information about how we found the chunk. Hence we store a “back look”, an array of the last node visited, for each level. We can then backtrack if we couldn’t fit the element into the chunk.
We effectively reduce cache misses by some factor depending on the size of the object you store. This is due to fewer links need to be followed before the goal is reached.


https://github.com/gramoli/synchrobench
https://gramoli.redbellyblockchain.io/web/doc/pubs/gramoli-synchrobench.pdf
        * Transactional memory [46] (TM) is appealing for simplifying
concurrent programming. TM offers transactions used to delimit
a region of code that should execute atomically. A
        * CAS allows to develop the fastest algorithms for multicores at the expense of great complexity
        * TM is a mature synchronization technique offering performance that are more consistent across update ratios and programs than locks.
        * the lock-free queue (CAS) is much faster than the reusable queue (TX)
        * copy-on-write and read-copy-update are more sensitive to contention than other techniques, yet they help achieving high performance under read-only workloads

https://github.com/TheHumbleTransistor/HTHSM
A framework for implementing hierarchical finite state machines (HSMs) in C code. It's a good fit for firmware projects, and helps keep your event-driven system orderly with readable code.

## tools

https://github.com/jnovy/pxz
Parallel LZMA compressor using liblzma

## gfx

https://xelatihy.github.io/yocto-gl/
Yocto/GL: Tiny C++ Libraries for Data-Oriented Physically-based Graphics

## web

https://github.com/GRVYDEV/Project-Lightspeed
A self contained OBS -> FTL -> WebRTC live streaming server. Comprised of 3 parts once configured anyone can achieve sub-second OBS to the browser livestreaming

