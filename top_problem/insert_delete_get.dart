
import 'dart:math';

class RandomizedSet {
  late List<int> _list;
  late Map<int, int> _map;

  RandomizedSet() {
    _list = [];
    _map = {};
  }

  bool search(int val) {
    return _map.containsKey(val);
  }

  bool insert(int val) {
    if (search(val)) return false;

    _list.add(val);
    _map[val] = _list.length - 1;
    return true;
  }

  bool remove(int val) {
    if (!search(val)) return false;

    int index = _map[val]!;
    int lastElement = _list.last;

    _list[index] = lastElement;
    _map[lastElement] = index;

    _list.removeLast();
    _map.remove(val);

    return true;
  }

  int getRandom() {
    Random rand = Random();
    return _list[rand.nextInt(_list.length)];
  }
}
void main(){
  RandomizedSet obj = RandomizedSet();
  bool param1 = obj.insert(2);
  bool param2 = obj.remove(1);
  int param3 = obj.getRandom();
}

