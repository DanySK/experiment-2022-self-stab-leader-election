object MultiLeaderUtil {

    /**
     * Adds [element] to the head of [input], moving all elements one position to the right and discarding the last one.
     */
    @JvmStatic
    fun <T> shiftAdd(input: List<T>, element: T) = (sequenceOf(element) + input.asSequence())
        .take(input.size)
        .toList()

    @JvmStatic
    fun stabilityOf(history: List<*>) = 1 - history.zipWithNext { a, b -> if (a == b) 1.0 else 0.0 }.sum() / (history.size - 1)
}