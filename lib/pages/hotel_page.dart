import 'package:flutter/material.dart';

class HotelPage extends StatelessWidget {
  const HotelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/hotel.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Search bar
          Positioned(
            top: 55, // Positioning the search bar
            left: 20,
            right: 20,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.7),
                borderRadius: BorderRadius.circular(200),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: const [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/avatar.png'),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Hi Nurhasan, book now and get discount",
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Icon(Icons.close, color: Colors.grey),
                ],
              ),
            ),
          ),
          // DraggableScrollableSheet for hotel information
          DraggableScrollableSheet(
            initialChildSize: 0.4, // Start at 40% of screen height
            minChildSize: 0.4, // Minimum height (40% of screen)
            maxChildSize: 0.9, // Maximum height (90% of screen)
            builder: (context, scrollController) {
              return Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Color(0xFF1D1F20), // Background color sesuai gambar
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Top rated",
                        style: TextStyle(
                          color: Color.fromARGB(255, 77, 147, 131),
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "Sapphires Hotel",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature.",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Row with map icon, hotel rent details, and share button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 130, // Ubah ukuran lebar
                            height: 105, // Ubah ukuran tinggi
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12), // radius
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  12), // Pastikan radius sama dengan BoxDecoration
                              child: Image.asset(
                                'assets/images/peta.png', // Path gambar
                                fit: BoxFit
                                    .cover, // Menjaga agar gambar terpotong dengan baik
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 5),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 26, vertical: 12),
                                decoration: BoxDecoration(
                                  color: Colors
                                      .transparent, // Transparan agar terlihat background di belakang
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      color: Colors.white.withOpacity(0.5),
                                      width: 1), // Border putih semi-transparan
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Hotel rent",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(
                                        height:
                                            20), // Memberi jarak antara "Hotel rent" dan harga
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "\$42",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                            width:
                                                5), // Jarak antara harga dan teks "Per night"
                                        Column(
                                          children: const [
                                            Text(
                                              "Per",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                              ),
                                            ),
                                            Text(
                                              "night",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          //   Column(
                          //     children: [
                          //       Container(
                          //         padding: const EdgeInsets.all(2),
                          //         decoration: BoxDecoration(
                          //           color: Colors.white,
                          //           borderRadius: BorderRadius.circular(10),
                          //         ),
                          //         child: IconButton(
                          //           icon: const Icon(Icons.image,
                          //               color: Colors.grey),
                          //           iconSize:
                          //               10, // Ikon pertama (misalnya ikon galeri)
                          //           onPressed: () {},
                          //         ),
                          //       ),
                          //       const SizedBox(
                          //           height:
                          //               10), // Jarak antara ikon pertama dan kedua
                          //       Container(
                          //         padding: const EdgeInsets.all(2),
                          //         decoration: BoxDecoration(
                          //           color: Colors.white,
                          //           borderRadius: BorderRadius.circular(12),
                          //         ),
                          //         child: IconButton(
                          //           icon: const Icon(Icons.share,
                          //               color: Colors
                          //                   .grey), // Ikon kedua (ikon share)
                          //           onPressed: () {},
                          //         ),
                          //       ),
                          //     ],
                          //   )
                          // ],
                          Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(
                                    7), // Mengurangi padding agar latar belakang lebih kecil
                                decoration: BoxDecoration(
                                  color: Colors
                                      .white, // Warna latar belakang putih
                                  borderRadius: BorderRadius.circular(
                                      10), // Membuat sudut melingkar
                                ),
                                child: Icon(
                                  Icons
                                      .image, // Ikon pertama (misalnya ikon galeri)
                                  color: Colors.grey, // Warna ikon
                                  size: 25, // Ukuran ikon lebih kecil
                                ),
                              ),
                              const SizedBox(
                                  height:
                                      25), // Jarak antara ikon pertama dan kedua
                              Container(
                                padding: const EdgeInsets.all(
                                    7), // Mengurangi padding agar latar belakang lebih kecil
                                decoration: BoxDecoration(
                                  color: Colors
                                      .white, // Warna latar belakang putih
                                  borderRadius: BorderRadius.circular(
                                      10), // Membuat sudut melingkar
                                ),
                                child: Icon(
                                  Icons.share, // Ikon kedua (ikon share)
                                  color: Colors.grey, // Warna ikon
                                  size: 25, // Ukuran ikon lebih kecil
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      // Additional content to show scrollable behavior
                      //
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
