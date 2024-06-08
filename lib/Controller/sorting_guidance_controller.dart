// // ignore_for_file: unused_field

// import 'package:camera/camera.dart';
// import 'package:flutter/material.dart';
// import 'package:tflite/tflite.dart';

// class SortingGuidanceController {
//   late CameraController _cameraController;
//   late List<CameraDescription> _cameras;
//   bool _isCameraInitialized = false;

//   Future<void> initializeCameraAndModel() async {
//     _cameras = await availableCameras();
//     _cameraController = CameraController(_cameras[0], ResolutionPreset.medium);
//     await _cameraController.initialize();
//     _isCameraInitialized = true;
//     await _loadModel();
//   }

//   Future<void> _loadModel() async {
//     await Tflite.loadModel(
//       model: 'assets/ssd_mobilenet.tflite',
//       labels: 'assets/ssd_mobilenet.txt',
//     );
//   }

//   Widget cameraPreview() {
//     return CameraPreview(_cameraController);
//   }

//   void scanObject() async {
//     if (_cameraController.value.isTakingPicture) return;

//     try {
//       final XFile image = await _cameraController.takePicture();
//       List<dynamic>? results = await Tflite.detectObjectOnImage(
//         path: image.path,
//         model: 'SSDMobileNet',
//         imageMean: 127.5,
//         imageStd: 127.5,
//         threshold: 0.5,
//       );

//       if (results != null && results.isNotEmpty) {
//         print('Detected objects: $results');
//       } else {
//         print('No objects detected');
//       }
//     } catch (e) {
//       print('Error during object detection: $e');
//     }
//   }

//   void dispose() {
//     _cameraController.dispose();
//     Tflite.close();
//   }
// }




