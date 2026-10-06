import 'package:coffee_shop/colors/colors.dart';
import 'package:coffee_shop/details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  List<Map<String, dynamic>> allcoffee = [
    {
      'name': 'Caramel Latte',
      'image': 'caramel latte.jpg',
      //'distance': 4.37,
      'address': 'with white foam',
      'rating': 4.0,
      'describe':'A smooth espresso blended with creamy steamed milk.\n Topped with a sweet layer of caramel flavor.\nPerfect for a warm and comforting coffee break.',
      'price': 4000,
    },
    {
      'name': 'Latte prof',
      'image': 'latte1.jpg',
      //'distance': 2.3,
      'address': 'extra coffee',
      'describe':'A rich espresso combined with silky steamed milk.\nCrafted with a smooth and bold coffee flavor.\nPerfect for those who enjoy a stronger latte.',
      'rating': 4.4,
      'price': 5000,
    },
    {
      'name': 'Espresso',
      'image': 'espresso.jpg',
      //'distance': 2.47,
      'address': 'profissional coffee',
      'rating': 4.4,
      'describe':'A rich and concentrated shot of freshly brewed coffee.\nBold, smooth, and full of deep coffee flavor.\nPerfect for a quick and energizing boost.',
      'price': 3000,
    },

    {
      'name': 'Latte',
      'image': 'latte.jpg',
      //'distance': 2.3,
      'address': 'extra foam',
      'rating': 4.4,
     'describe':'A classic blend of rich espresso and steamed milk.\nSmooth, creamy, and perfectly balanced in flavor.\nA simple choice for every coffee lover.',
      'price': 4000,
    },
    {
      'name': 'Captcino',
      'image': 'captcino.jpg',
      //'distance': 3.34,
      'address': 'white foaming',
      'describe':'A delicious blend of espresso, steamed milk, and foam.\nRich coffee flavor with a light and creamy texture.\nFinished with a soft layer of smooth milk foam.',
      'rating': 3.5,
      'price': 3500,
    },
    // {
    //   'name': 'tawil',
    //   'image': 'tawil.png',
    //   'distance': 4.34,
    //   'address': 'Safina',
    //   'rating': 3.0,
    // },
  ];

  List<Map<String, dynamic>> machiato = [
    {
      'name': 'Caramel Latte',
      'image': 'caramel latte.jpg',
      //'distance': 4.37,
      'address': 'with white foam',
      'rating': 4.0,
      'describe':
          'A smooth espresso blended with creamy steamed milk.\n Topped with a sweet layer of caramel flavor.\nPerfect for a warm and comforting coffee break.',
      'price': 4000,
    },
  ];

  List<Map<String, dynamic>> americano = [
    {
      'name': 'Espresso',
      'image': 'espresso.jpg',
      //'distance': 2.47,
      'address': 'profissional coffee',
      'describe':
          'A rich and concentrated shot of freshly brewed coffee.\nBold, smooth, and full of deep coffee flavor.\nPerfect for a quick and energizing boost.',
      
      'rating': 4.4,
      'price': 3000,
    },
  ];

  List<Map<String, dynamic>> latte = [
    {
      'name': 'Latte',
      'image': 'latte.jpg',
       'describe':
          'A classic blend of rich espresso and steamed milk.\nSmooth, creamy, and perfectly balanced in flavor.\nA simple choice for every coffee lover.',
      //'distance': 2.3,
      'address': 'extra foam',
      'rating': 4.4,
      'price': 4000,
    },
    
{
      'name': 'Latte prof',
      'image': 'latte1.jpg',
      //'distance': 2.3,
      'address': 'extra coffee',
      'describe':
          'A rich espresso combined with silky steamed milk.\nCrafted with a smooth and bold coffee flavor.\nPerfect for those who enjoy a stronger latte.',
      'rating': 4.4,
      'price': 5000,
    },
    // {
    //   'name': 'tawil',
    //   'image': 'tawil.png',
    //   'distance': 4.34,
    //   'address': 'Safina',
    //   'rating': 3.0,
    // },
  ];

  int x = 1;
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ================= HEADER =================
            Stack(
              clipBehavior: Clip.none,
              children: [
                // Brown header
                Container(
                  width: double.infinity,
                  height: 300,
                  color: AppColors.darkbrown1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 25),

                        Text(
                          'Location',
                          style: GoogleFonts.sora(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w100,
                          ),
                        ),

                        const SizedBox(height: 10),

                        Text(
                          'Yemen,Aden',
                          style: GoogleFonts.sora(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),

                        const SizedBox(height: 20),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  controller: controller,
                                  readOnly: true,
                                  decoration: InputDecoration(
                                    hintText: 'Search coffee',
                                    hintStyle: GoogleFonts.sora(
                                      color: AppColors.brownwhite,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w100,
                                    ),
                                    prefixIcon: const Icon(
                                      Icons.search,
                                      color: AppColors.brownwhite,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                              ),

                              const SizedBox(width: 8),

                              Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                  color: AppColors.primary,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.select_all_sharp,
                                    color: AppColors.brownwhite,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // ================= AD =================
                Positioned(
                  top: 220,
                  left: 24,
                  right: 24,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/images/coffeead.jpg',
                      height: 140,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),

            // ================= SPACE FOR AD =================
            const SizedBox(height: 100),

            // ================= WHITE AREA =================
            Container(
              width: double.infinity,
              color: AppColors.ofwhite,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  // ================= CATEGORIES =================
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            x = 1;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 10,
                          ),
                          decoration: BoxDecoration(
                            color: x == 1 ? AppColors.primary : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'All coffee',
                            style: TextStyle(
                              color: x == 1
                                  ? AppColors.ofwhite
                                  : AppColors.primary,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 10),

                      InkWell(
                        onTap: () {
                          setState(() {
                            x = 2;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 10,
                          ),
                          decoration: BoxDecoration(
                            color: x == 2 ? AppColors.primary : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'Machiato',
                            style: TextStyle(
                              color: x == 2
                                  ? AppColors.ofwhite
                                  : AppColors.primary,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 10),

                      InkWell(
                        onTap: () {
                          setState(() {
                            x = 3;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 10,
                          ),
                          decoration: BoxDecoration(
                            color: x == 3 ? AppColors.primary : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'Latte',
                            style: TextStyle(
                              color: x == 3
                                  ? AppColors.ofwhite
                                  : AppColors.primary,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(width: 10),

                      InkWell(
                        onTap: () {
                          setState(() {
                            x = 4;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 10,
                          ),
                          decoration: BoxDecoration(
                            color: x == 4 ? AppColors.primary : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'Americano',
                            style: TextStyle(
                              color: x == 4
                                  ? AppColors.ofwhite
                                  : AppColors.primary,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // ================= GRID =================
                  GridView.builder(
                    shrinkWrap: true,

                    // مهم جدًا:
                    physics: const NeverScrollableScrollPhysics(),

                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.7,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                        ),

                    itemCount: x == 1
                        ? allcoffee.length
                        : x == 2
                        ? machiato.length
                        : x == 3
                        ? latte.length
                        : americano.length,

                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Details(
                                product: x == 1
                                    ? allcoffee[index]
                                    : x == 2
                                    ? machiato[index]
                                    : x == 3
                                    ? latte[index]
                                    : americano[index],
                              ),
                            ),
                          );
                        },

                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 1,
                                blurStyle: BlurStyle.outer,
                                color: Color.fromARGB(45, 128, 125, 119),
                              ),
                            ],
                          ),

                          padding: const EdgeInsets.all(8),

                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 210,
                                    child: Expanded(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: Image.asset(
                                          "assets/images/${x == 1
                                              ? allcoffee[index]['image']
                                              : x == 2
                                              ? machiato[index]['image']
                                              : x == 3
                                              ? latte[index]['image']
                                              : americano[index]['image']}",
                                          width: 200,
                                          //height: 500,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10,
                                    right: 4,
                                    child: Container(
                                      width: 40,
                                      padding: const EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: const Color.fromARGB(
                                          255,
                                          220,
                                          218,
                                          218,
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          const Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 15,
                                          ),
                                          Expanded(
                                            child: Text(
                                              x == 1
                                                  ? allcoffee[index]['rating']
                                                        .toString()
                                                  : x == 2
                                                  ? machiato[index]['rating']
                                                        .toString()
                                                  : x == 3
                                                  ? latte[index]['rating']
                                                        .toString()
                                                  : americano[index]['rating']
                                                        .toString(),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              const SizedBox(height: 2),

                              Text(
                                x == 1
                                    ? allcoffee[index]['name']
                                    : x == 2
                                    ? machiato[index]['name']
                                    : x == 3
                                    ? latte[index]['name']
                                    : americano[index]['name'],
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              Text(
                                x == 1
                                    ? allcoffee[index]['address']
                                    : x == 2
                                    ? machiato[index]['address']
                                    : x == 3
                                    ? latte[index]['address']
                                    : americano[index]['address'],
                                style: const TextStyle(
                                  color: AppColors.primary,
                                  fontSize: 12,
                                ),
                              ),

                              const SizedBox(height: 2),

                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width: 40,
                                    //height: 10,
                                    padding: const EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.white,
                                    ),
                                    child: Row(
                                      children: [
                                        // const Icon(
                                        //   Icons.star,
                                        //   color: Colors.amber,
                                        //   size: 15,
                                        // ),
                                        Expanded(
                                          child: Text(
                                            x == 1
                                                ? allcoffee[index]['price']
                                                      .toString()
                                                : x == 2
                                                ? machiato[index]['price']
                                                      .toString()
                                                : x == 3
                                                ? latte[index]['price']
                                                      .toString()
                                                : americano[index]['price']
                                                      .toString(),
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Container(
                                    width: 35,
                                    //padding: const EdgeInsets.all(1),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: AppColors.primary,
                                    ),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.add,
                                        color: AppColors.ofwhite,
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              //const SizedBox(height: 1),
                            ],
                          ),
                        ),
                      );
                    },
                  ),

                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
