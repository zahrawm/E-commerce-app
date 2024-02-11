import 'package:client_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDescriptionPage extends StatelessWidget {
  const ProductDescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Product Details",
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                "https://gh.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/24/237711/1.jpg?9868",
                fit: BoxFit.contain,
                width: double.infinity,
                height: 200,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Puma Footwear",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Product Description",
              style: TextStyle(fontSize: 20, height: 1.5),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Rs:",
              style: TextStyle(fontSize: 20, height: 1.5, color: Colors.green),
            ),
            TextField(
              maxLines: 3,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)),
                  labelText: "Enter your billing address"),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(HomePage());
                },
                child: const Text(
                  "Buy now",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      backgroundColor: Colors.blueAccent),
                ))
          ],
        ),
      ),
    );
  }
}
