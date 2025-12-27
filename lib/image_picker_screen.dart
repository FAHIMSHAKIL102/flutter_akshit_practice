import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({super.key});

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  ImagePicker _imagePicker = ImagePicker();
  XFile? file;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ImagePickerScreen')),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 300,
              width: 400,
              color: Colors.grey,
              child: Center(
                child: file == null
                    ? Text('Image not Picked')
                    : Image.file(File(file!.path)),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              final XFile? photo = await _imagePicker.pickImage(
                source: ImageSource.gallery,
              );
              setState(() {
                file = photo;
              });
            },
            child: Text('Upload'),
          ),
        ],
      ),
    );
  }
}
