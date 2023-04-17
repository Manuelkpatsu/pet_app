import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:pet_app/models/product.dart';
import 'package:pet_app/screen/main/best_seller/best_seller_screen.dart';
import 'package:pet_app/screen/main/notification/notification_screen.dart';
import 'package:pet_app/screen/main/settings/widget/section_text.dart';
import 'package:pet_app/screen/widget/product_tile/product_tile.dart';

import 'widget/action_button.dart';
import 'widget/banner_image.dart';
import 'widget/category.dart';
import 'widget/category_filter_button.dart';
import 'widget/location_name_text.dart';
import 'widget/location_search.dart';
import 'widget/mask.dart';
import 'widget/select_location_button.dart';
import 'widget/view_all_button.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Product> _products = [
    const Product(
      id: 1,
      image: 'assets/images/products/product-1.png',
      name: 'RC Kitten',
      price: 20.99,
      description:
          "The Persian cat has the longest and densest coat of all cat breeds. This means that it typically needs to consume more skin-health focused nutrients than other cat breeds. That’s why ROYAL CANIN® Persian Adult contains an exclusive complex of nutrients to help the skin’s barrier defence role to maintain good skin and coat health.",
    ),
    const Product(
      id: 2,
      image: 'assets/images/products/product-2.png',
      name: 'RC Persian',
      price: 22.99,
      description:
          "The Persian cat has the longest and densest coat of all cat breeds. This means that it typically needs to consume more skin-health focused nutrients than other cat breeds. That’s why ROYAL CANIN® Persian Adult contains an exclusive complex of nutrients to help the skin’s barrier defence role to maintain good skin and coat health.",
    ),
    const Product(
      id: 3,
      image: 'assets/images/products/product-1.png',
      name: 'RC Kitten',
      price: 20.99,
      description:
          "The Persian cat has the longest and densest coat of all cat breeds. This means that it typically needs to consume more skin-health focused nutrients than other cat breeds. That’s why ROYAL CANIN® Persian Adult contains an exclusive complex of nutrients to help the skin’s barrier defence role to maintain good skin and coat health.",
    ),
  ];
  Category _selectedCategory = Category.food;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 270,
        titleSpacing: 24,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectLocationButton(onTap: _openLocationModalSheet),
                      const LocationNameText(location: 'Jebres, Surakarta'),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                ActionButton(
                  onPressed: () {},
                  icon: IconlyLight.search,
                ),
                const SizedBox(width: 12),
                ActionButton(
                  onPressed: () {
                    PersistentNavBarNavigator.pushNewScreen(
                      context,
                      screen: const NotificationScreen(),
                      withNavBar: false,
                    );
                  },
                  icon: IconlyLight.notification,
                ),
              ],
            ),
            const SizedBox(height: 35),
            Stack(
              clipBehavior: Clip.none,
              children: const [
                Mask(),
                BannerImage(
                  image: 'assets/images/banner.png',
                  top: -30,
                  left: -25,
                  imageHeight: 176,
                  imageWidth: 176,
                ),
                BannerImage(
                  image: 'assets/images/banner.png',
                  bottom: -35,
                  left: 5,
                  imageHeight: 161,
                  imageWidth: 161,
                ),
              ],
            ),
          ],
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SectionText(section: 'Category', padding: EdgeInsets.zero),
                  ViewAllButton(onPressed: () {}),
                ],
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 47,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                scrollDirection: Axis.horizontal,
                itemCount: Category.values.length,
                itemBuilder: (ctx, index) {
                  Category type = Category.values[index];

                  return Padding(
                    padding: EdgeInsets.only(right: index == Category.values.length - 1 ? 0 : 12),
                    child: CategoryFilterButton(
                      type: type,
                      isSelected: _selectedCategory == type,
                      onPressed: () {
                        setState(() {
                          if (_selectedCategory != type) {
                            _selectedCategory = type;
                          }
                        });
                      },
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SectionText(section: 'Best Seller', padding: EdgeInsets.zero),
                  ViewAllButton(
                    onPressed: () {
                      PersistentNavBarNavigator.pushNewScreen(
                        context,
                        screen: const BestSellerScreen(),
                        withNavBar: false,
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 220,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                scrollDirection: Axis.horizontal,
                itemCount: _products.length,
                itemBuilder: (ctx, index) {
                  Product product = _products[index];

                  return Padding(
                    padding: EdgeInsets.only(right: index == _products.length - 1 ? 0 : 15),
                    child: SizedBox(
                      width: 160,
                      child: ProductTile(
                        onTap: () {},
                        onAddToCartTap: () {},
                        product: product,
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  void _openLocationModalSheet() {
    showModalBottomSheet(
      context: context,
      barrierColor: Colors.black.withOpacity(0.3),
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(32), bottom: Radius.zero),
      ),
      constraints: BoxConstraints.loose(
        Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height * 0.8),
      ),
      isScrollControlled: true,
      builder: (ctx) {
        return const LocationSearch();
      },
    );
  }
}
