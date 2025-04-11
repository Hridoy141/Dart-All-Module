main() async {
  userAbleToVote(30).then((Value){
   if(Value){
    print('Able to vote');
   }else{
    print('Still kid');
   }
  });

login('01568921384','123456' ).then((value){
  if(value){
   print('Facebook home page');
    }else{
   print('Error | login page');
  }
});
print('Start function');
await test();
print('After all done');
}

Future<bool> userAbleToVote(int age) async {

  if(age > 18){
    return true;
  }else{
    return false;
  }
}



Future<bool> login(String phone,String password)async{
  String userphone = '01568921384';
  String userpassword = '123456';

  if(userphone == phone && userpassword == password){
    return true;
  }else{
    return false;
  }
}



Future<void> test()async{
 await Future.delayed(Duration(seconds:5 ),(){
    print('Ran after 5 sec');
  });
  print('Function end');
}