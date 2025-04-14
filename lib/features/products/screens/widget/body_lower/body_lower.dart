import 'package:e_commerce_app/common/widgets/preferredsize/appbar.dart';
import 'package:e_commerce_app/common/widgets/products/review/company_reply.dart';
import 'package:e_commerce_app/common/widgets/products/review/user_review.dart';
import 'package:e_commerce_app/features/products/screens/widget/body_lower/rating.dart';
import 'package:flutter/material.dart';

class CReviewsScreen extends StatelessWidget {
  const CReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(
        titleText: "Reviews & Ratings",
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "These reviews are from people who have bought this product before, these are verified users",
                  style: Theme.of(context).textTheme.bodySmall,
                ),

                const SizedBox(height: 20),

                CProductRating(),

                const SizedBox(height: 20),

                CUserReview(
                  username: "Peter Parker",
                  date: "6th April, 2025",
                  desc:
                      "Wow! very great product. You have got to trt this atleast once in your life. They saved me a lot of work, these web shooters are awsome!",
                  rating: 4.1,
                ),
                const SizedBox(height: 20),

                CCompanyReply(
                  companyName: "Daily Needs",
                  date: "7th April, 2025",
                  desc:
                      "Thank you! We are glad you liked our product Peter and we will try our best to keep up the service as good as possible.",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
