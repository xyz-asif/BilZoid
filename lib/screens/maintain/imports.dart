
import 'package:cart/controllers/functions.dart';
import 'package:cart/screens/Auth/details.dart';
export 'package:cart/screens/maintain/stock.dart';
import 'package:get/get.dart';


export 'package:cart/screens/bill/invoice.dart';
export 'package:firebase_storage/firebase_storage.dart';
export 'package:image_picker/image_picker.dart';
export 'package:firebase_core/firebase_core.dart';
export 'package:flutter/material.dart';
export 'package:cart/controllers/functions.dart';
export 'package:cloud_firestore/cloud_firestore.dart';
export 'package:get/get.dart';
export '../../firebase_options.dart';
export '../../models/models.dart';
export '../auth/signin.dart';
export 'package:cart/screens/pages/carted.dart';
export 'package:firebase_auth/firebase_auth.dart';
export 'package:google_sign_in/google_sign_in.dart';
export 'package:printing/printing.dart';
export 'package:pdf/pdf.dart';
export 'package:lottie/lottie.dart';
export 'package:flutter/services.dart';



var a =  Get.find<Cart>();


class Bind extends Bindings{
  @override
  void dependencies() {
 Get.lazyPut(() => Cart(), fenix: true);
  }
 
}


