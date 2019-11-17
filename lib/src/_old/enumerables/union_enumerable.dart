import '../equality_comparer.dart';
import '../enumerable.dart';
import '../enumerable_with_source.dart';
import '../iterators/union_iterator.dart';

class UnionEnumerable<T> extends Enumerable<T>
    implements EnumerableWithSource<T> {
  final Enumerable<T> source;
  final Iterable<T> other;
  final EqualityComparer<T> comparer;

  const UnionEnumerable(this.source, this.other, this.comparer);

  @override
  Iterator<T> get iterator => UnionIterator(this);
}