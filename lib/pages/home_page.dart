import 'package:client_app/widgets/drop_down_btn.dart';
import 'package:client_app/widgets/multi_select_drop_btn.dart';
import 'package:client_app/widgets/product_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Footwear Store",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.logout))],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Chip(label: Text("Category")),
                  );
                }),
          ),
          Row(
            children: [
              DropDownBtn(
                  items: const ["Rs: Low to High", "Rs: High to Low"],
                  selectedItemText: "Sort",
                  onSelected: (selected) {}),
              Flexible(
                  child: MultiSelectDropDown(
                items: const ["items 1", "Items 2", "Items 3"],
                onSelectedChange: (selectedItems) {},
              ))
            ],
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ProductCard(
                    name: 'Puma Footwear',
                    imageUrl:
                        'https://gh.jumia.is/unsafe/fit-in/500x500/filters:fill(white)/product/24/237711/1.jpg?9868',
                    price: 200,
                    offerTag: '',
                    onTap: () {},
                  );
                }),
          )
        ],
      ),
    );
  }
}
