class Stack<E>{
  Stack() : _storage = <E>[];
  final List<E> _storage;

  void push(E element) => _storage.add(element);

  E pop() => _storage.removeLast();
}

class Solution extends Stack{

  bool isValid(String s) {
    bool isCheck = false;
    for(int i = 0; i < s.length; i++){
      if(s[i] == '(' || s[i] == '[' || s[i] == '{'){
        push(s[i]);
      }else{
        if (_storage.isEmpty) {
          return false;
        }

        String re = pop();
        if(re == '('){
          isCheck = s[i] == ')';
        }else if( re == '['){
          isCheck = s[i] == ']';
        }else{
          isCheck = s[i] == '}';
        }

        if(!isCheck){
          return false;
        }

      }
    }
    return isCheck && _storage.isEmpty;
  }
}


void main(){
  Solution obj = Solution();
  print(obj.isValid("([]){"));
}