import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:shoping/models/home_carosel_item_model.dart';
import 'package:shoping/models/product_item_model.dart';
import 'package:shoping/utils/app_colors.dart';
import 'package:shoping/views/widgets/product_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController _tabcontroller;
  @override
  void initState() {
    super.initState();

    _tabcontroller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          // new comment
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          'https://scontent.fcai20-6.fna.fbcdn.net/v/t39.30808-6/440173086_2274404309572644_9181329252288792034_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeFwm3NFd10Ubis_KmDSdy4rdps30x4rA8B2mzfTHisDwPsbX_XA8luwcMMPeLyBqLjoCIn0K2CCugJF3hc5pwBJ&_nc_ohc=NM1iAbz_ZEcQ7kNvgGmXWvX&_nc_zt=23&_nc_ht=scontent.fcai20-6.fna&_nc_gid=AnTPdGjq0wigHXJQ2qC1UOM&oh=00_AYBvLI9CdG4WX_DyuYnV3lvmksg5X68R9WiZgr29X2no8Q&oe=6754BCBE'),
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Abdo Gaber',
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        Text(
                          'let\'s go shopping',
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall!
                              .copyWith(color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: const Icon((Icons.search))),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.notifications))
                  ],
                )
              ],
            ),
            const SizedBox(height: 24.0),
            TabBar(
                controller: _tabcontroller,
                unselectedLabelColor: AppColors.grey,
                tabs: const [
                  Tab(
                    text: 'Home',
                  ),
                  Tab(text: 'Category')
                ]),
            const SizedBox(height: 24.0),
            FlutterCarousel.builder(
              itemCount: dummyHomeCarouselItem.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Padding(
                padding: const EdgeInsetsDirectional.only(end: 16.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                    dummyHomeCarouselItem[itemIndex].imgUrl,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              options: FlutterCarouselOptions(
                height: 200,
                showIndicator: true,
                autoPlay: true,
                slideIndicator: CircularWaveSlideIndicator(),
              ),
            ),
            const SizedBox(height: 24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'New Arrivals',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                Text(
                  'See All',
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(
              height: 16.0,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: dummyProducts.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.7),
                itemBuilder: (context, index) {
                  return ProductItem(productItem: dummyProducts[index]);
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
