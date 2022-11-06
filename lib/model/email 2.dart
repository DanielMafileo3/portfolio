// // ignore_for_file: prefer_const_declarations

// import 'dart:convert';

// import 'package:http/http.dart' as http;

// class Email {
//   Future sendEmail({
//     required String name,
//     required String email,
//     required int number,
//     required String company,
//     required String message,
//   }) async {
//     final serviceId = 'service_qdys2tx';
//     final templateId = 'template_gof2z22';
//     final userId = '5M1A-QMCgmkPi22s6';

//     final url = Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
//     final response = await http.post(
//       url,
//       headers: {'Content-Type': 'application/json'},
//       body: json.encode({
//         {
//           'service_id': serviceId,
//           'template_id': templateId,
//           'user_id': userId,
//           'template_params': {
//             'user_name': name,
//             'user_email': email,
//             'user_company': company,
//             'user_number': number,
//             'user_subject': "Flutter App - Potential Client",
//             'user_message': message,
//           }
//         }
//       }),
//     );

//     print(response.body);
//   }
// }
