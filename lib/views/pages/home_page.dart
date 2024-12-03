import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
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
                            'https://scontent.fcai20-6.fna.fbcdn.net/v/t39.30808-6/440173086_2274404309572644_9181329252288792034_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeFwm3NFd10Ubis_KmDSdy4rdps30x4rA8B2mzfTHisDwPsbX_XA8luwcMMPeLyBqLjoCIn0K2CCugJF3hc5pwBJ&_nc_ohc=NM1iAbz_ZEcQ7kNvgGmXWvX&_nc_zt=23&_nc_ht=scontent.fcai20-6.fna&_nc_gid=AtzUjXtT0CdJiUifMWQcHaR&oh=00_AYAmaYIP4egSWEHmTGX5kZemkGUC1tESw2CResdS_tSpKA&oe=67536B3E'),
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
              )
            ],
          ),
        ),
      ),
    ));
  }
}
