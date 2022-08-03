import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  File? image;

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);

      if (image == null) {
        return;
      }

      final imageTemperory = File(image.path);
      setState(() {
        this.image = imageTemperory;
      });
    } on PlatformException catch (e) {
      print('Failed to Pick Image $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 22),
        Container(
          color: const Color(0xFFF5F5F5),
          // color: Colors.black,
          width: 334,
          height: 408,

          // Container with image icon if no image selected from gallery.
          child: image != null
              ? Image.file(
                  image!,
                  fit: BoxFit.cover,
                )
              : const Icon(Icons.image),
        ),
        const SizedBox(height: 22),

        // Primary Buttons:
        Container(
            child: image == null
                ? Column(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          pickImage(ImageSource.gallery);
                        },
                        icon: const Icon(Icons.add_photo_alternate),
                        label: const Text(
                          'Select from your Gallery',
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.black87,
                            side: const BorderSide(width: 3),
                            padding: const EdgeInsets.fromLTRB(70, 12, 70, 12)),
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton.icon(
                        onPressed: () {
                          pickImage(ImageSource.camera);
                        },
                        icon: const Icon(
                          Icons.camera_alt,
                          color: Colors.black,
                        ),
                        label: const Text(
                          'Capture using Camera',
                          style: TextStyle(color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            side: const BorderSide(width: 2),
                            padding: const EdgeInsets.fromLTRB(70, 12, 70, 12)),
                      ),
                    ],
                  )
                : Container(
                    child: Column(
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {
                            pickImage(ImageSource.camera);
                          },
                          icon: const Icon(
                            Icons.camera_alt,
                            color: Colors.black,
                          ),
                          label: const Text(
                            'Discard & Select new Image',
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              side: const BorderSide(width: 2),
                              padding:
                                  const EdgeInsets.fromLTRB(70, 12, 70, 12)),
                        ),
                        const SizedBox(height: 30),
                        ElevatedButton.icon(
                          onPressed: () {
                            // pickImage(ImageSource.gallery);
                          },
                          icon: const Icon(Icons.next_plan),
                          label: const Text(
                            'Extract Text',
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.black87,
                              side: const BorderSide(width: 3),
                              padding:
                                  const EdgeInsets.fromLTRB(120, 12, 120, 12)),
                        ),
                      ],
                    ),
                  ))
      ],
    );
  }
}
