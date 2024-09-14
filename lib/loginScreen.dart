import 'package:flutter/material.dart';
import 'DashboardScreen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isVisible = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
     title: Text('My App',style: TextStyle(color: Colors.white),),
      backgroundColor: Colors.black,
    
      ),
      
      backgroundColor: Color.fromARGB(236, 25, 137, 178),
      body: Padding(
          
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                const SizedBox(
              height: 100,
            ), 
              Center(child: Icon(Icons.person,size: 150,)),
              
             const SizedBox(
              height: 100,
            ), 
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Enter your Email",
                  hintStyle: Theme.of(context).textTheme.headlineSmall,
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                  focusedBorder: OutlineInputBorder(
                      
                      borderSide: BorderSide(color: Colors.black)),
                      fillColor: Colors.white,
                      filled: true
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: passwordController,
                obscureText: isVisible,
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                    child: Icon(
                      isVisible ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                  hintText: "Enter your Password",
                  hintStyle: Theme.of(context).textTheme.headlineSmall,
                  border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
                  focusedBorder: OutlineInputBorder(
                      
                   borderSide: BorderSide(color: Colors.black)),

                      fillColor: Colors.white,
                      filled: true,
                      
                ),
              ),
              SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  if (emailController.text.isEmpty ||
                      passwordController.text.isEmpty) {
                    print("Please Enter Valid Credentials");
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.yellow,
                        content: Text(
                          "Please Enter Valid Credentials",
                          style: Theme.of(context).textTheme.displaySmall,
                        )));
                  } else {
                    print("Login Successfully!!");
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        backgroundColor: Colors.green,
                        content: Text(
                          "Loggin Successfully",
                          style: Theme.of(context).textTheme.displaySmall,
                        )));
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return DashboardScreen(email:
                       emailController.text, password: passwordController.text,);
                    }));
                  }
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Login",
                      
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}