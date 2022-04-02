import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isRecommended,
    required this.isPopular,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        name,
        category,
        imageUrl,
        price,
        isRecommended,
        isPopular,
      ];
  static List<Product> products = [
    Product(
      name: 'simtank1',
      category: 'Dumped Plastic Tanks',
      imageUrl:
          'http://tanks.techno-plast.com/wp-content/uploads/2020/12/13-e1608183390693-480x480.jpg',
      price: 20000,
      isRecommended: true,
      isPopular: false,
    ),
    Product(
      name: 'simtank2',
      category: 'Dumped Plastic Tanks',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyGhA4ITgxvqSdQkSIDYgbsZJZWqed_C80m_iKN49kSmoJDXt4ePHULoyKM9GwreZXV10&usqp=CAU',
      price: 60000,
      isRecommended: false,
      isPopular: true,
    ),
    Product(
      name: 'cupper',
      category: 'Dumped Cars',
      imageUrl:
          'https://c8.alamy.com/comp/B5AXBW/crashed-cars-awaiting-breaking-at-a-car-scrapyard-october-1959-a823-B5AXBW.jpg',
      price: 150000,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'old Toyota',
      category: 'Dumped Cars',
      imageUrl:
          'https://media.istockphoto.com/photos/old-rusty-car-body-picture-id686017202?s=612x612',
      price: 200000,
      isRecommended: false,
      isPopular: true,
    ),
    Product(
      name: 'Iron container',
      category: 'Unused Container',
      imageUrl:
          'https://assets.primecreative.com.au/imagegen/p/800/600/assets/momoads/2022/01/21/161501/IMG_0503.jpg',
      price: 400000,
      isRecommended: true,
      isPopular: true,
    ),
    Product(
      name: 'Iron Container2',
      category: 'Unused Container',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFKcDwiy83_wHA9n_1xaPpg0_vevvaL09gvQ&usqp=CAU',
      price: 700000,
      isRecommended: false,
      isPopular: true,
    ),
  ];
}
