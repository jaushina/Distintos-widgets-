import 'package:flutter/material.dart';
 
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  static const String _title = 'CENTRO RECREACIONAL';
  
 
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 115, 6, 6),
          centerTitle: true,
          
          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)), 
          
          title: const Text(_title)),
          
          body: const MyStatefulWidget()
        
          )
      );
  }
}
 
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
 
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}
 
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Gatito Negro',
                  style: TextStyle(
                      color: Color.fromARGB(255, 167, 14, 14),
                      fontWeight: FontWeight.w500,
                      fontSize: 36),
                )),
                // ignore: prefer_const_constructors
                Image(
                 image: const AssetImage('assets/gato1.png'),
                  height: 130,
  
                ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(5),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 35.0,
                    color:Color.fromARGB(255, 167, 14, 14)),
                )),
            Container(
              height: 65,
              padding: const EdgeInsets.fromLTRB(50,0,50,0),
              
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'Usuario',
                   suffixIcon: Icon(
                    Icons.account_circle
                  )
                ),
              ),
            ),
            
            Container(
              height: 65,
              padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  labelText: 'Contraseña',
                  suffixIcon: Icon(
                    Icons.lock
                  )
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text('Has olvidado tu contraseña',),

            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(90, 0, 90, 0),
                child: ElevatedButton(
                  child: const Text('Sing in'),
                   onPressed:  () {
                    (nameController.text);
                    (passwordController.text);
                    
                  },
                )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('No tienes cuenta?'),
                TextButton(
                  child: const Text(
                    'Registrarse',
                    style: TextStyle(fontSize: 15),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
            ),
            
          ],
          

   ));
 }
}