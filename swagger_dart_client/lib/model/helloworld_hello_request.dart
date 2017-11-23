part of swagger.api;

@Entity()
class HelloworldHelloRequest {
  
  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'lastname')
  String lastname = null;
  
  HelloworldHelloRequest();

  @override
  String toString()  {
    return 'HelloworldHelloRequest[name=$name, lastname=$lastname, ]';
  }
}

