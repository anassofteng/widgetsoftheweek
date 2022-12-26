import 'package:flutter/material.dart';

class imagewiget extends StatefulWidget {
  const imagewiget({super.key});

  @override
  State<imagewiget> createState() => _imagewigetState();
}

class _imagewigetState extends State<imagewiget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Widget'),
      ),
      body: imagebilderwiget(
        image:
            'https://images.pexels.com/photos/14840714/pexels-photo-14840714.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      ),
    );
  }
}

class imagebilderwiget extends StatelessWidget {
  final double height, width;
  final String image;
  const imagebilderwiget(
      {super.key, this.height = 200, this.width = 200, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Colors.black),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image(
          height: height,
          width: width,
          fit: BoxFit.fill,
          // ignore: prefer_const_constructors
          image: NetworkImage(image),
          errorBuilder: (context, exception, stack) {
            return SizedBox(
              height: height,
              width: width,
              child: Icon(
                Icons.error,
                color: Colors.red,
              ),
            );
          },
          loadingBuilder:
              (BuildContext context, Widget child, ImageChunkEvent? loading) {
            if (loading == null) return child;
            return SizedBox(
              height: height,
              width: width,
              child: Center(
                  child: CircularProgressIndicator(
                value: loading.expectedTotalBytes != null
                    ? loading.cumulativeBytesLoaded /
                        loading.expectedTotalBytes!
                    : null,
              )),
            );
          },
        ),
      ),
    );
  }
}
