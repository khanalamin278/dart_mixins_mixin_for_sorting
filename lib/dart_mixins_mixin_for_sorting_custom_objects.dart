/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/dart_mixins_mixin_for_sorting_custom_objects_base.dart';
/*
Practice Question 2: Mixin for Sorting Custom Objects
Question:

Create a class Animal with a field weight.
Create a mixin WeightComparableMixin that makes a class comparable based on the weight field.
Create a class Dog that extends Animal and uses the WeightComparableMixin.
Test sorting a list of Dog objects based on their weight.
*/

mixin WeightComparableMixin<T extends Animal> on Animal
    implements Comparable<T> {
  @override
  int compareTo(T other) {
    return weight.compareTo(other.weight);
  }
}

class Animal {
  double weight;
  Animal(this.weight);
}

class Dog extends Animal with WeightComparableMixin {
  Dog(super.weight);
}
