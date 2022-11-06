# Custom Sequences / `customsequences`

Custom sequences built to support other projects

At this time, there is one sequence available, the Cartesian sequence.


## Cartesian Sequence

Creates a sequence of pairs built of the Cartesian product of two underlying sequences. A Cartesian product `seq1` x `seq2` consists of the sequence of all ordered pairs `(element1, element2)` where `seq1` ∋ `element1` and `seq2` ∋ `element2`.

```
`seq1` x `seq2` = `Sequence({ (element1, element2)` |
  `seq1` ∋ `element1` and `seq2` ∋ `element2` })
```

The pairs sequence is lazy. It terminates iff both `seq1` and `seq2` are finite. `seq1` can be single-pass. A finite `seq2` will be iterated any number of times and must provide multipass traversal.

The elements of `seq2` are enumerated before each element of `seq1` is consumed. For example, `product(1...2, "abc")` returns the sequence `(1, "a"), (1, "b"), (1, "c"), (2, "a"), (2, "b")`, and so forth.

_Warning_: `seq2` must be a multipass (not single-pass) sequence

Returns a sequence of tuple pairs, where the elements of each pair correspond to the Cartesian ordering of `seq1` and `seq2` elements.

Declared In `CartesianSequence.swift`

## Known Issues

None.

