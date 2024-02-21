import 'package:auth_final/screen/Auth/signup1.dart';
import 'package:auth_final/screen/Auth/signup3.dart';
import 'package:flutter/material.dart';

const List<String> list = <String>['NSBM', 'SLIT', 'NIBM', 'IIT'];

class SignUp2 extends StatefulWidget {
  const SignUp2({super.key});

  @override
  State<SignUp2> createState() => _SignUp2State();
}

class _SignUp2State extends State<SignUp2> {
  String dropdownValue = 'NSBM';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const Spacer(),

              Center(
                child: Image.asset(
                  'assets/UniJunction.png',
                  width: 300,
                  height: 100,
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 15.0),
              //   child: TextFormField(
              //     // controller: passwordController,
              //     decoration: const InputDecoration(
              //         contentPadding: EdgeInsets.all(8),
              //         hintText: 'Enter Password',
              //         border: OutlineInputBorder()),
              //   ),
              // ),
              Container(
                width: 300,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 1),
                ),
                child: DropdownButton<String>(
                  hint: const Text("Select your University"),
                  icon: const Icon(
                    Icons.arrow_drop_down,
                  ),
                  value: dropdownValue == 'NSBM' ? null : dropdownValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                  items: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),

              // const Spacer(),
              // const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Can't find the university?"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUp3(),
                            ));
                      },
                      child: const Text(
                        "Personal Email",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 42,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const SignUp3()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 213, 183, 243),
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
