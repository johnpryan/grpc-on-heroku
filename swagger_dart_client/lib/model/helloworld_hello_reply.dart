part of swagger.api;

@Entity()
class HelloworldHelloReply {
  
  @Property(name: 'message')
  String message = null;
  

  @Property(name: 'score')
  int score = null;
  
  HelloworldHelloReply();

  @override
  String toString()  {
    return 'HelloworldHelloReply[message=$message, score=$score, ]';
  }
}

