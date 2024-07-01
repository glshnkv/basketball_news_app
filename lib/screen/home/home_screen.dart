import 'package:auto_route/auto_route.dart';
import 'package:basketball_news_app/repository/news_repository.dart';
import 'package:basketball_news_app/router/router.dart';
import 'package:basketball_news_app/theme/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: AppColors.black,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.black,
          centerTitle: true,
          title: Text(
            'Home',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 23,
                color: AppColors.white),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Breaking news',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: AppColors.white),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 260,
                  child: ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    scrollDirection: Axis.horizontal,
                    itemCount: newsRepository.length,
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(width: 15),
                    itemBuilder: (BuildContext context, int index) {
                      final news = newsRepository[index];
                      return GestureDetector(
                        onTap: () {
                          context.router.push(NewsInfoRoute(news: news));
                        },
                        child: SizedBox(
                          width: 250,
                          child: Container(
                            decoration: BoxDecoration(
                                color: AppColors.darkGrey,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10)),
                                  child: Image.asset(
                                    news.image,
                                    fit: BoxFit.cover,
                                    width: 250,
                                    height: 140,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        news.title,
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15,
                                            color: AppColors.white),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        '${news.date}  •  ${news.readTime} min read',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: AppColors.white60),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Last news',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: AppColors.white),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: newsRepository.length,
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(height: 15),
                      itemBuilder: (BuildContext context, int index) {
                        final news = newsRepository[index];
                        return GestureDetector(
                          onTap: () {
                            context.router.push(NewsInfoRoute(news: news));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: AppColors.darkGrey,
                                borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomLeft: Radius.circular(10)),
                                  child: Image.asset(
                                    news.image,
                                    fit: BoxFit.cover,
                                    width: 105,
                                    height: 105,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                  width: 250,
                                        child: Text(
                                          news.title,
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                              color: AppColors.white),
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        '${news.date}  •  ${news.readTime} min read',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: AppColors.white60),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
