import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:nongki/components/menu_grid.dart';
import 'package:nongki/components/slogan_layout.dart';
import 'package:nongki/components/sosmed_button.dart';
import 'package:nongki/menu.dart';

void main() => runApp(KedaiNongkiApp());

class KedaiNongkiApp extends StatelessWidget {
  const KedaiNongkiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: KedaiNongkiHomePage(),
    );
  }
}

class KedaiNongkiHomePage extends StatelessWidget {
  final List<String> imageUrls = [
    'assets/Poster/test.png', // Gambar burger pertama
    'assets/Poster/test.png',  // Gambar burger kedua
    'assets/Poster/test.png',  // Gambar burger ketiga
  ];
  
  final List<MenuItems> menuItems = [
    MenuItems(imgPath: "assets/sample_menu_image/menu1.png", name: "Nasi Telur", price: 12000, description: "Jika Anda mencari makanan yang lezat, praktis, dan memuaskan, Nasi Telor adalah pilihan yang sempurna! Nasi hangat yang pulen disajikan dengan telor goreng atau ceplok yang dimasak dengan sempurna, menciptakan kombinasi klasik yang sulit ditolak."),
    MenuItems(imgPath: "assets/sample_menu_image/menu2.png", name: "Seblak Nikmat", price: 12000, description: "Seblak Bakso Sosis Telor: Sensasi Pedas yang Memanjakan Lidah Jika Anda mencari hidangan yang pedas dan penuh rasa, Seblak Bakso Sosis Telor adalah pilihan yang sempurna. Dengan kerupuk kenyal yang khas, bakso lembut, sosis gurih, dan telur yang lembut,"),
    MenuItems(imgPath: "assets/sample_menu_image/menu3.png", name: "Telur Omelete", price: 13000, description: "Telor Omlet: Kreasi Sederhana dengan Rasa Istimewa Telor Omlet adalah hidangan klasik yang bisa dinikmati kapan saja. Dibuat dari telur segar yang dikocok hingga berbusa, kemudian dimasak hingga matang sempurna dengan tambahan bahan pilihan seperti sayur"),
    MenuItems(imgPath: "assets/sample_menu_image/menu4.png", name: "Roti Kocak", price: 12000, description: "Roti Keju Coklat: Perpaduan Manis dan Gurih yang Sempurna Roti Keju Coklat adalah sajian yang memadukan kelezatan coklat manis dengan gurihnya keju dalam roti yang lembut dan empuk. Ini adalah pilihan camilan atau sarapan yang ideal untuk Anda yang mengi"),
    MenuItems(imgPath: "assets/sample_menu_image/menu5.png", name: "Nasi Goreng", price: 10000, description: "Nasi Goreng: Hidangan Favorit yang Selalu Menggugah Selera Nasi Goreng adalah salah satu hidangan paling ikonik dan disukai di berbagai belahan dunia. Dibuat dari nasi yang digoreng dengan bumbu pilihan dan aneka tambahan seperti daging, sayuran, serta t"),
    MenuItems(imgPath: "assets/sample_menu_image/menu6.png", name: "Roti Bureger", price: 18000, description: "Roti Burger adalah komponen kunci dalam menyusun burger yang lezat dan sempurna. Dengan tekstur yang lembut namun cukup kuat untuk menahan daging, sayuran, dan saus, roti burger kami siap untuk membuat burger Anda semakin istimewa."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Icon(
                Icons.restaurant_menu,
                color: Colors.deepPurple,
              ),
              SizedBox(width: 8),
              Text(
                'Kedai Nongki Yuks 21',
                style: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 20),
              TextButton(
                onPressed: () {},
                child: Text('Beranda', style: TextStyle(color: Colors.black)),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Menu', style: TextStyle(color: Colors.black)),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Login', style: TextStyle(color: Colors.black)),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Daftar', style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Carousel 
            CarouselSlider(
              options: CarouselOptions(
                height: 250.0,
                autoPlay: true,
                enlargeCenterPage: true,
              ),
              items: imageUrls.map((url) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage(url),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 20),
        
            // TEXT
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nongkrong?!',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Nongki 21 tempat nya',
                    style: TextStyle(fontSize: 24),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Jl. Karang Satria No.54\nBuka Selasa - Minggu\n17.00 - 00.00',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Tambahkan navigasi ke halaman menu jika ada
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                    ),
                    child: Text('Lihat Menu'),
                  ),
                ],
              ),
            ),
          
            const SizedBox(height: 20),
        
          const  Text('Sejarah Singkat Nongki Yuks 21', style: TextStyle(fontSize: 23),),
            
         const   Divider(),
            
            const SizedBox(height: 20),
            
            Text('Cara termudah untuk makanan Anda. Sistem Pemesanan Makanan menyediakan pengiriman segar dalam waktu 30 menit dan menyediakan makanan gratis jika pesanan tidak tepat waktu. Jadi tunggu apalagi, mulailah memesan sekarang juga!', style: TextStyle(),textAlign: TextAlign.center,),

            const SizedBox(height: 20,),

           const Divider(),
        
        // Slogan Menu
           const  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: SloganLayout(iconData: Icons.food_bank, title: "Pilih Menu")),
                SizedBox(width: 10,),
                Expanded(child: SloganLayout(iconData: Icons.food_bank, title: "Pesan Menu Yang Kamu Sukai")),
                SizedBox(width: 10,),
                Expanded(child: SloganLayout(iconData: Icons.food_bank, title: "Pesanan Di Antar Kemeja")),
                SizedBox(width: 10,),
              ],
            ),

           const  Divider(),

           const SizedBox(height: 20,),
          
          const Text("Menu", style: TextStyle(fontSize: 20),),
          
          const  Divider(),

          GridView.builder(
            shrinkWrap: true, 
             padding: EdgeInsets.all(18.0),
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:2,  
              crossAxisSpacing: 5
              ),
            itemCount: menuItems.length,
            itemBuilder: (context, index) {
              final items = menuItems[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: MenuGrid(
                  imagePath: items.imgPath,
                  menuName: items.name,
                  menuPrice: items.price.toString(),
                  menuDescription: items.description, 
                  ),
              );
            },
           ),

           const SizedBox(height: 20,),

           const Divider(),

           const Text("Social Media", 
           style: TextStyle(
            fontSize: 18, 
            fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
            ),
          
           const SizedBox(height: 20,),
           const SosmedButton(),
           const SizedBox(height: 20,),


          ],
        ),
      ),
    );
  }
}
