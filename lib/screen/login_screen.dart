import 'package:flutter/material.dart';
import 'package:well_being/screen/main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscure = true;
  bool tetapMasuk = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IntrinsicHeight(
          child: Container(
            width: 350,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Text("Login", style: TextStyle(fontSize: 30)),
                    Container(
                      color: const Color.fromARGB(255, 211, 211, 211),
                      height: 100,
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.alternate_email),
                        labelText: 'Email',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: 'Password',
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscure
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Checkbox(
                          value: tetapMasuk,
                          onChanged: (value) {
                            tetapMasuk = !tetapMasuk;
                            setState(() {});
                          },
                        ),
                        Text("Buat saya tetap masuk."),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Daftar akun",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MainScreen(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Text(
                              'Login',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
