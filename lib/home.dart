import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Encontramos',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            _buildMainCard(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
              child: Text(
                'Hoteles',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            _buildHotelCards(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
              child: Text(
                'Restaurantes',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            _buildRestaurantCards(),
          ],
        ),
      ),
    );
  }

  Widget _buildMainCard() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRntHrluDHJDCKXMag3-1v9MpdAfGmTAfZIgC1iZpigvAkESBjv_RNdkpm1xTdWAir-Q2o&usqp=CAU',
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildHotelCards() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _hotelCard('Alexandre Hotel',
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhBggPQxeZ2HgPm7xanCuw7zvU4qSzzCgFnw&s'),
          _hotelCard('Hotel Xcaret',
              'https://digital.ihg.com/is/image/ihg/ihgor-member-rate-web-offers-1440x720'),
          _hotelCard('Relaxia Beverly',
              'https://www.relaxia.net/dms/multiHotel-relaxia-hotels-resorts/hoteles/relaxia-beverly-park/galeria/piscina/piscina-relaxia-beverly-park-2.jpg'),
        ],
      ),
    );
  }

  Widget _hotelCard(String title, String imageUrl) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
        width: 180,
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(12)),
                child: Image.network(imageUrl, height: 120, fit: BoxFit.cover),
              ),
              const SizedBox(height: 8),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  '\$198',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRestaurantCards() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _restaurantCard('Maná 75°',
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJ0EqHI6h5QgFTXGG_1i2FADG1xulRbVtecA&s'),
          _restaurantCard('La Cuisine',
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjZWxF857wSQn-JXkXtibHxZpX4xmyj1p6tA&s'),
          _restaurantCard('Rilke',
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjZWxF857wSQn-JXkXtibHxZpX4xmyj1p6tA&s'),
        ],
      ),
    );
  }

  Widget _restaurantCard(String name, String imageUrl) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
        width: 180,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(12)),
                child: Image.network(imageUrl, height: 120, fit: BoxFit.cover),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  name,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 16),
                    Text('4.8'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
