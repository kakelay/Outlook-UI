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
    "name": "Carhartt",
    "image": "assets/images/user_1.png",
    "subject": "New Workwear Collection Available",
    "isAttachmentAvailable": false,
    "isChecked": true,
    "tagColor": null,
    "time": "Now",
  },
  {
    "name": "Uniqlo",
    "image": "assets/images/user_2.png",
    "subject": "Fresh Minimalist Styles for Summer",
    "isAttachmentAvailable": true,
    "isChecked": false,
    "tagColor": null,
    "time": "15:32",
  },
  {
    "name": "Dickies",
    "image": "assets/images/user_3.png",
    "subject": "Durable Workwear at Great Prices",
    "isAttachmentAvailable": true,
    "isChecked": false,
    "tagColor": null,
    "time": "14:27",
  },
  {
    "name": "Hollister",
    "image": "assets/images/user_4.png",
    "subject": "Casual Beachwear Just Arrived",
    "isAttachmentAvailable": false,
    "isChecked": true,
    "tagColor": Color(0xFF23CF91),
    "time": "10:43",
  },
  {
    "name": "Nike",
    "image": "assets/images/user_5.png",
    "subject": "Exclusive Sneakers & Sportswear",
    "isAttachmentAvailable": false,
    "isChecked": true,
    "tagColor": Color(0xFF3A6FF7),
    "time": "9:58",
  },
  {
    "name": "Adidas",
    "image": "assets/images/user_5.png",
    "subject": "New Performance Gear in Stock",
    "isAttachmentAvailable": false,
    "isChecked": false,
    "tagColor": Color(0xFF3A6FF7),
    "time": "9:58",
  },
  {
    "name": "The North Face",
    "image": "assets/images/user_5.png",
    "subject": "Outdoor Essentials for Every Adventure",
    "isAttachmentAvailable": false,
    "isChecked": false,
    "tagColor": Color(0xFF3A6FF7),
    "time": "9:58",
  },
  {
    "name": "Levi’s",
    "image": "assets/images/user_5.png",
    "subject": "Classic Denim, Timeless Style",
    "isAttachmentAvailable": false,
    "isChecked": false,
    "tagColor": Color(0xFF3A6FF7),
    "time": "9:58",
  },
  {
    "name": "Patagonia",
    "image": "assets/images/user_5.png",
    "subject": "Sustainable Fashion for Every Season",
    "isAttachmentAvailable": false,
    "isChecked": false,
    "tagColor": Color(0xFF3A6FF7),
    "time": "9:58",
  },
  {
    "name": "Supreme",
    "image": "assets/images/user_5.png",
    "subject": "Limited Edition Drops - Don’t Miss Out",
    "isAttachmentAvailable": false,
    "isChecked": false,
    "tagColor": Color(0xFF3A6FF7),
    "time": "9:58",
  },
];

String emailDemoText =
    "Hey there,"
    "We’ve got some exciting new arrivals that you don’t want to miss! "
    "From durable workwear to everyday essentials, check out our latest collection featuring Carhartt, Uniqlo, Dickies, and Hollister.\n\n"
    "🔥 Carhartt – Tough, long-lasting jackets and pants built for work and adventure.\n"
    "👕 Uniqlo – Minimalist essentials with comfort and style for any occasion.\n"
    "👖 Dickies – Classic workwear with a street-style edge, perfect for every day.\n"
    "🧥 Hollister – Casual wear that’s all about comfort and laid-back vibes.\n\n"
    "Upgrade your wardrobe today with pieces that fit your lifestyle. Don’t miss out on our exclusive discounts and limited-edition drops!\n\n"
    "Shop now and stay ahead of the trends!\n\n"
    "Best,\nThe Fashion Team";
