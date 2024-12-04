import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoping/utils/app_colors.dart';
import 'package:shoping/views/widgets/category_tap_viwe.dart';
import 'package:shoping/views/widgets/home_tap_viwe.dart';
import 'package:shoping/viwe_models/home_cubit/home_cubit.dart';

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
    return BlocProvider(
      create: (context) {
        final cubit = HomeCubit();
        cubit.getHomeData();
        return cubit;
      },
      child: Scaffold(
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
                          onPressed: () {},
                          icon: const Icon(Icons.notifications))
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
              const SizedBox(height: 25.0),
              Expanded(
                child: TabBarView(
                  controller: _tabcontroller,
                  children: const [HomeTapViwe(), CategoryTapViwe()],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
