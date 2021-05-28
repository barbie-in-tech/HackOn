import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImgPicker extends StatefulWidget {
  final void Function(File pickedImage) imagePicker;

  ImgPicker(this.imagePicker);

  @override
  _ImgPickerState createState() => _ImgPickerState();
}

class _ImgPickerState extends State<ImgPicker> {
  File _pickedImage;

  void _getFromGallery() async {
    final picker = ImagePicker();
    final pickedImageFile = await picker.getImage(
      source: ImageSource.gallery,
      imageQuality: 50,
      maxWidth: 200,
      maxHeight: 200,
    );
    if (pickedImageFile != null) {
      setState(() {
        _pickedImage = File(pickedImageFile.path);
      });
      widget.imagePicker(_pickedImage);
    }
  }

  void _getFromCamera() async {
    final picker = ImagePicker();
    final pickedImageFile = await picker.getImage(
      source: ImageSource.camera,
      imageQuality: 50,
      maxWidth: 200,
      maxHeight: 200,
    );
    if (pickedImageFile != null) {
      setState(() {
        _pickedImage = File(pickedImageFile.path);
      });
      widget.imagePicker(_pickedImage);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: _getFromCamera,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(13),
            ),
            width: double.infinity,
            height: 200,
            child: _pickedImage != null
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(13),
                    child: Image.file(
                      _pickedImage,
                      fit: BoxFit.cover,
                    ),
                  )
                : Icon(
                    Icons.camera_alt_outlined,
                    // color: _pickedImage != null ? Colors.white : Colors.black,
                  ),
          ),
          // child: CircleAvatar(
          //   radius: 37,
          //   backgroundColor: Colors.black12,
          //   backgroundImage:
          //       _pickedImage != null ? FileImage(_pickedImage) : null,
          //   child: Icon(
          //     Icons.camera_alt_outlined,
          //     color: _pickedImage != null ? Colors.white : Colors.black,
          //   ),
          // ),
        ),
        TextButton.icon(
          onPressed: _getFromGallery,
          icon: Icon(Icons.image),
          label: Text("Upload Image"),
        ),
      ],
    );
  }
}
