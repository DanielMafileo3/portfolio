// ignore_for_file: prefer_const_constructors, avoid_print, unused_field

import 'dart:convert';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final _formKey = GlobalKey<FormState>();
  String? _name;
  String? _email;
  String? _phone;
  String? _company;
  String? _message;

  bool isValidEmail(email) {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(email);
  }

  bool isValidPhone(phone) {
    final phoneRegExp = RegExp(r"^[0-9]{10}$");
    return phoneRegExp.hasMatch(phone);
  }

//   final Email email = Email(
//   body: 'Email body',
//   subject: 'Email subject',
//   recipients: ['example@example.com'],
//   cc: ['cc@example.com'],
//   bcc: ['bcc@example.com'],
//   attachmentPaths: ['/path/to/attachment.zip'],
//   isHTML: false,
// );

// await FlutterEmailSender.send(email);

  final Uri _url = Uri.parse('https://www.linkedin.com/in/daniel-mafileo/');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  Future sendEmail({
    required String name,
    required String email,
    required String number,
    required String company,
    required String message,
  }) async {
    const serviceId = 'service_qdys2tx';
    const templateId = 'template_gof2z22';
    const userId = '5M1A-QMCgmkPi22s6';

    final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        {
          'service_id': serviceId,
          'template_id': templateId,
          'user_id': userId,
          'template_params': {
            'user_name': name,
            'user_email': email,
            'user_company': company,
            'user_number': number,
            'user_subject': "Flutter App - Potential Client",
            'user_message': message,
          }
        }
      }),
    );

    //print(response.body);
  }

  launchMailto() async {
    final mailtoLink = Mailto(
      to: ['mafileo.daniel93@gmail.com'],
      cc: [],
      subject: 'To Flutter Developer',
      body: 'Hi Taniela Mafile\'o, \n\n',
    );
    // Convert the Mailto instance into a string.
    // Use either Dart's string interpolation
    // or the toString() method.
    await launch('$mailtoLink');
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(50),
      child: Column(
        children: [
          Text(
            "Contact Me",
            style: TextStyle(
              color: Color.fromARGB(255, 0, 44, 121),
              fontSize: width < 900 ? 30 : 50,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(
                    width * .5,
                    50,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  launchMailto();
                },
                icon: Icon(Icons.email),
                label: Text('Email'),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(
                    width * .5,
                    50,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  _launchUrl();
                },
                icon: Icon(FontAwesomeIcons.linkedin),
                label: Text('LinkedIn'),
              ),
            ],
          )
          // Form(
          //   key: _formKey,
          //   child: Container(
          //     width: width * .8,
          //     child: Column(
          //       children: [
          //         Row(
          //           crossAxisAlignment: CrossAxisAlignment.center,
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             Expanded(
          //               child: TextFormField(
          //                 keyboardType: TextInputType.name,
          //                 validator: (value) {
          //                   if (value == "") {
          //                     return "Please enter your name";
          //                   } else {
          //                     _name = value;
          //                   }
          //                 },
          //                 decoration: InputDecoration(
          //                   hintText: "Enter your name",
          //                   labelText: "Name",
          //                 ),
          //               ),
          //             ),
          //             SizedBox(
          //               width: 15,
          //             ),
          //             Expanded(
          //               child: TextFormField(
          //                 validator: (value) {
          //                   if (value == "") {
          //                     return "Please enter an email";
          //                   } else if (!isValidEmail(value)) {
          //                     return "Invalid email";
          //                   } else {
          //                     _email = value;
          //                   }
          //                 },
          //                 decoration: InputDecoration(
          //                   hintText: "Enter your email",
          //                   labelText: "Email",
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //         SizedBox(
          //           height: 15,
          //         ),
          //         Row(
          //           crossAxisAlignment: CrossAxisAlignment.center,
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             Expanded(
          //               child: TextFormField(
          //                 keyboardType: TextInputType.number,
          //                 validator: (value) {
          //                   if (value == "") {
          //                     return "Please enter your phone number";
          //                   } else if (!isValidPhone(value)) {
          //                     return "Invalid phone number";
          //                   } else {
          //                     _phone = value;
          //                   }
          //                 },
          //                 decoration: InputDecoration(
          //                   hintText: "Enter your phone",
          //                   labelText: "Phone Number",
          //                 ),
          //               ),
          //             ),
          //             SizedBox(
          //               width: 15,
          //             ),
          //             Expanded(
          //               child: TextFormField(
          //                 keyboardType: TextInputType.name,
          //                 validator: (value) {
          //                   _company = value;
          //                 },
          //                 decoration: InputDecoration(
          //                   hintText: "Enter your company",
          //                   labelText: "Company",
          //                 ),
          //               ),
          //             ),
          //           ],
          //         ),
          //         SizedBox(
          //           height: 15,
          //         ),
          //         TextFormField(
          //           minLines: 6,
          //           maxLines: null,
          //           keyboardType: TextInputType.multiline,
          //           decoration: InputDecoration(
          //             hintText: "Enter your message",
          //             labelText: "Message",
          //           ),
          //           validator: (value) {
          //             _message = value;
          //           },
          //         ),
          //         SizedBox(
          //           height: 20,
          //         ),
          //         ElevatedButton(
          //           style: ElevatedButton.styleFrom(
          //             fixedSize: Size(
          //               width,
          //               50,
          //             ),
          //             shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(15),
          //             ),
          //           ),
          //           onPressed: () {
          //             // sendEmail(
          //             //     name: 'Daniel',
          //             //     email: 'mafileo.daniel93@gmail.com',
          //             //     number: '0483290700',
          //             //     company: 'Utol Tech',
          //             //     message: 'God is Good');
          //             launchMailto();
          //             if (_formKey.currentState!.validate()) {
          //               print("Success");
          //             }
          //           },
          //           child: Text("Send"),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
