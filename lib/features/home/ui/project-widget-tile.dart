// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_counter/features/home/bloc/home_bloc.dart';
import 'package:flutter_counter/features/home/models/home-product-data-model.dart';

class ProductWidgetTile extends StatelessWidget {
  final ProductDataModel productDataModel;
  final HomeBloc homeBloc;

  const ProductWidgetTile({
    Key? key,
    required this.productDataModel,
    required this.homeBloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.black,
          width: 03,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(productDataModel.imgUrl),
                  fit: BoxFit.fill),
            ),
          ),
          SizedBox(height: 20),
          Text(productDataModel.name,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20)),
          SizedBox(height: 05),
          Text(productDataModel.category,
              style: TextStyle(fontWeight: FontWeight.w400)),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$' + '${productDataModel.price}',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      homeBloc.add(HomeProductWishlistButtonClickEvent(
                          clickedProduct: productDataModel));
                    },
                    icon: Icon(Icons.favorite_border_rounded),
                  ),
                  IconButton(
                    onPressed: () {
                      homeBloc.add(HomeProductCartButtonClickEvent(
                          clickedProduct: productDataModel));
                    },
                    icon: Icon(Icons.shopping_bag_outlined),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
