import 'dart:convert';

void main(List<String> args) {
  
  final cidadeJson = '''

   [ 
    {
      "id":1,
      "nome":"São Paulo"
     },
     {
      "id":2,
      "nome":"Guarulhos"
     }
   ]
  
  ''';

  // json [] => List
  // json {} = Map<String, dynamic>


  final cidadeMap = json.decode(cidadeJson);

  //acessar quando do for um Map
  //print (cidadeMap ['nome']);

  //acessar quando do for um List
  cidadeMap.forEach((city)=> print (city ['nome']));

}
