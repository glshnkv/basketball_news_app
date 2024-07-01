import 'package:auto_route/auto_route.dart';
import 'package:basketball_news_app/models/news_model.dart';
import 'package:basketball_news_app/theme/colors.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NewsInfoScreen extends StatefulWidget {
  final NewsModel news;

  const NewsInfoScreen({super.key, required this.news});

  @override
  State<NewsInfoScreen> createState() => _NewsInfoScreenState();
}

class _NewsInfoScreenState extends State<NewsInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        foregroundColor: AppColors.white,
        backgroundColor: AppColors.black,
        centerTitle: true,
        title: Text(
          'Settings',
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 23,
              color: AppColors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              widget.news.image,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: AppColors.darkGrey,
                            borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        child: RichText(
                          text: TextSpan(
                            text: 'By ',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: AppColors.white60),
                            children: <TextSpan>[
                              TextSpan(
                                text: widget.news.author,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color: AppColors.red),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: AppColors.darkGrey,
                            borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        child: Text(
                          widget.news.date,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: AppColors.white60),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: AppColors.darkGrey,
                            borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        child: Text(
                          '${widget.news.readTime} min read',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: AppColors.white60),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Text(
                    widget.news.title,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 23,
                        color: AppColors.white),
                  ),
                  SizedBox(height: 15),
                  Text(
                    widget.news.article,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: AppColors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
