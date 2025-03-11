import 'package:flutter/material.dart';

class Email {
  final String? image, name, subject, body, time;
  final bool? isAttachmentAvailable, isChecked;
  final Color? tagColor;

  Email({
    this.time,
    this.isChecked,
    this.image,
    this.name,
    this.subject,
    this.body,
    this.isAttachmentAvailable,
    this.tagColor,
  });
}

List<Email> emails = List.generate(
  demo_data.length,
  (index) => Email(
    name: demo_data[index]['name'],
    image: demo_data[index]['image'],
    subject: demo_data[index]['subject'],
    isAttachmentAvailable: demo_data[index]['isAttachmentAvailable'],
    isChecked: demo_data[index]['isChecked'],
    tagColor: demo_data[index]['tagColor'],
    time: demo_data[index]['time'],
    body: emailDemoText,
  ),
);

List demo_data = [
  {
    "name": "សៀមរាប",
    "image": "assets/images/user_1.png",
    "subject": "អាយហ្វូន ១២ មានរួចហើយ",
    "isAttachmentAvailable": false,
    "isChecked": true,
    "tagColor": null,
    "time": "ឥឡូវនេះ",
  },
  {
    "name": "សុភមង្គល",
    "image": "assets/images/user_2.png",
    "subject": "ការចំរាញ់បំផុសគំនិតសម្រាប់ផ្ទះថ្មី",
    "isAttachmentAvailable": true,
    "isChecked": false,
    "tagColor": null,
    "time": "15:32",
  },
  {
    "name": "វិសាល",
    "image": "assets/images/user_3.png",
    "subject": "អាជីវកម្មធំមួយកំពុងបង្កើនអំណាចពិភពលោក",
    "isAttachmentAvailable": true,
    "isChecked": false,
    "tagColor": null,
    "time": "14:27",
  },
  {
    "name": "សុធារ៉ា",
    "image": "assets/images/user_4.png",
    "subject": "វិធីលឿនបំផុតក្នុងការរចនា",
    "isAttachmentAvailable": false,
    "isChecked": true,
    "tagColor": Color(0xFF23CF91),
    "time": "10:43",
  },
  {
    "name": "សម្បត្តិ",
    "image": "assets/images/user_5.png",
    "subject": "ឱកាសការងារថ្មីៗ",
    "isAttachmentAvailable": false,
    "isChecked": true,
    "tagColor": Color(0xFF3A6FF7),
    "time": "9:58",
  },

  {
    "name": "សុភា",
    "image": "assets/images/user_5.png",
    "subject": "ឱកាសការងារថ្មីៗ",
    "isAttachmentAvailable": false,
    "isChecked": false,
    "tagColor": Color(0xFF3A6FF7),
    "time": "9:58",
  },
  {
    "name": "វិមាន",
    "image": "assets/images/user_5.png",
    "subject": "ឱកាសការងារថ្មីៗ",
    "isAttachmentAvailable": false,
    "isChecked": false,
    "tagColor": Color(0xFF3A6FF7),
    "time": "9:58",
  },
  {
    "name": "ចន្ថា",
    "image": "assets/images/user_5.png",
    "subject": "ឱកាសការងារថ្មីៗ",
    "isAttachmentAvailable": false,
    "isChecked": false,
    "tagColor": Color(0xFF3A6FF7),
    "time": "9:58",
  },
  {
    "name": "វិចិត្រ",
    "image": "assets/images/user_5.png",
    "subject": "ឱកាសការងារថ្មីៗ",
    "isAttachmentAvailable": false,
    "isChecked": false,
    "tagColor": Color(0xFF3A6FF7),
    "time": "9:58",
  },
  {
    "name": "អេមលី",
    "image": "assets/images/user_5.png",
    "subject": "ឱកាសការងារថ្មីៗ",
    "isAttachmentAvailable": false,
    "isChecked": false,
    "tagColor": Color(0xFF3A6FF7),
    "time": "9:58",
  },
  {
    "name": "ពិសី",
    "image": "assets/images/user_5.png",
    "subject": "ឱកាសការងារថ្មីៗ",
    "isAttachmentAvailable": false,
    "isChecked": false,
    "tagColor": Color(0xFF3A6FF7),
    "time": "9:58",
  },
  {
    "name": "រតនា",
    "image": "assets/images/user_5.png",
    "subject": "ឱកាសការងារថ្មីៗ",
    "isAttachmentAvailable": false,
    "isChecked": false,
    "tagColor": Color(0xFF3A6FF7),
    "time": "9:58",
  },
  {
    "name": "សុវណ្ណ",
    "image": "assets/images/user_5.png",
    "subject": "ឱកាសការងារថ្មីៗ",
    "isAttachmentAvailable": false,
    "isChecked": false,
    "tagColor": Color(0xFF3A6FF7),
    "time": "9:58",
  },
  {
    "name": "វិសាល",
    "image": "assets/images/user_5.png",
    "subject": "ឱកាសការងារថ្មីៗ",
    "isAttachmentAvailable": false,
    "isChecked": false,
    "tagColor": Color(0xFF3A6FF7),
    "time": "9:58",
  },
  {
    "name": "អីណា",
    "image": "assets/images/user_5.png",
    "subject": "ឱកាសការងារថ្មីៗ",
    "isAttachmentAvailable": false,
    "isChecked": false,
    "tagColor": Color(0xFF3A6FF7),
    "time": "9:58",
  },
];

String emailDemoText =
    "Corporis illo provident. Sunt omnis neque et aperiam. Nemo ut dolorum fugit eum sed. Corporis illo provident. Sunt omnis neque et aperiam. Nemo ut dolorum fugit eum sed. Corporis illo provident. Sunt omnis neque et aperiam. Nemo ut dolorum fugit eum sed";
