import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 200,
                    width: 300,
                    // child: Center(child: Text('UOG',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.yellowAccent),)),
                    decoration: const BoxDecoration(
                      // color: Colors.green,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage('https://upload.wikimedia.org/wikipedia/en/c/c4/University_of_Gujrat_Logo.png')
                      )
                    ),

                  )
                ],
              ),
            ),
            SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                style: const TextStyle(fontSize: 18,color: Colors.black),
                keyboardType: TextInputType.emailAddress,
                cursorColor: Colors.green,
                enabled: true,
                decoration:  InputDecoration(
                  hintText: 'Email',
                  labelText: 'Email',
                  prefixIcon: const Icon(Icons.email_outlined),
                  // suffix: Icon(Icons.lock),
                  enabledBorder: OutlineInputBorder(
                    borderSide:  BorderSide(color: Colors.teal.withOpacity(0.8),width: 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red,width: 2),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red,width: 2),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fillColor: Colors.grey.withOpacity(0.2),
                  filled: true,
                  labelStyle:const  TextStyle(fontSize: 14,color: Colors.black),
                  hintStyle: const TextStyle(fontSize: 14,color: Colors.red),

                ),
              ),
            ),
          const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                style: const TextStyle(color: Colors.black,fontSize: 18),
                decoration: InputDecoration(
                  hintText: 'Password',
                  labelText: 'Password',
                  prefixIcon: const Icon(Icons.lock_open),
                  suffixIcon:const  Icon(Icons.visibility_off_outlined),
                  labelStyle: const TextStyle(color: Colors.black,fontSize: 14),
                  hintStyle: const TextStyle(color: Colors.black,fontSize: 14),
                  enabledBorder: OutlineInputBorder(
                    borderSide:  BorderSide(color: Colors.teal.withOpacity(0.8)),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.red,width: 2)),
                  errorBorder:const  OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red,width: 2),
                  ),
                  fillColor: Colors.grey.withOpacity(0.2),
                  filled: true,

                  
                ),
              ),
            ),
            const SizedBox(height: 100,),
            Center(
              child: Container(
                height: 50,
                width: 250,
                child: Center(child: Text('login',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),)),
                decoration: BoxDecoration(
                  color: Colors.tealAccent,
                  borderRadius: BorderRadius.circular(10),

                ),
              ),
            ),
            SizedBox(height: 30,),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(text: TextSpan(
                text: 'Dont have an account?',
                style: Theme.of(context).textTheme.bodyText1,
                children: const [
                  TextSpan(
                    text: 'Sign up',style: TextStyle(fontSize: 18,decoration:TextDecoration.underline,fontWeight: FontWeight.bold)
                  )
                ]
              )),
            )

            // SizedBox(
            //   height: 300,
            //   child:  VerticalDivider(thickness: 3,color: Colors.black,),
            //
            // ),
            // Center(child: Divider(thickness: 3,color: Colors.black,)),
            // SizedBox(
            //   height: 300,
            //   child:  VerticalDivider(thickness: 3,color: Colors.black,),
            //
            // ),

            // Center(
            //   child: CircleAvatar(
            //     minRadius: 10,
            //     maxRadius: 100,
            //     backgroundColor: Colors.red,
            //     child: Icon(Icons.person),
            //     backgroundImage: NetworkImage('https://images.pexels.com/photos/18596173/pexels-photo-18596173/free-photo-of-beautiful-blonde-woman-sitting-in-front-of-the-plants.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            //
            //   ),
            //
            // ),


          ],
        ),
      ),
    );
  }
}

// stack implementation
// Stack(
// children: [
// Container(
// height: 200,
// width: 400,
// color: Colors.deepOrange,
// child: const Center(child: Text('Login form')),
// ),
// Container(
// height: 300,
// width: 300,
// color: Colors.yellowAccent,
// child: const Center(child: Text('Login form')),
// ),
// Container(
// height: 400,
// width: 200,
// color: Colors.green,
// child: const Center(child: Text('Login form')),
// ),
// ],
// )