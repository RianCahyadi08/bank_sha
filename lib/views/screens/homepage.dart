import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/views/widgets/home_latest_transactions_items.dart';
import 'package:bank_sha/views/widgets/home_service_items.dart';
import 'package:bank_sha/views/widgets/home_tips_items.dart';
import 'package:bank_sha/views/widgets/home_user_items.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          buildProfile(),
          buildWalletCard(),
          buildLevel(),
          buildServices(),
          buildLatestTransactions(),
          buildSendAgain(),
          buildFriendlyTips()
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: whiteColor,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        notchMargin: 6,
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            elevation: 0,
            backgroundColor: whiteColor,
            selectedItemColor: blueColor,
            unselectedItemColor: blackColor,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedLabelStyle:
                blueTextStyle.copyWith(fontSize: 10, fontWeight: medium),
            unselectedLabelStyle:
                blackTextStyle.copyWith(fontSize: 10, fontWeight: medium),
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/images/ic_overview.png',
                  width: 20,
                  height: 20,
                  color: blueColor,
                ),
                label: 'Overview',
              ),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/ic_history.png',
                    width: 20,
                    height: 20,
                  ),
                  label: 'History'),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/ic_statistic.png',
                    width: 20,
                    height: 20,
                  ),
                  label: 'Statistic'),
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/ic_reward.png',
                    width: 20,
                    height: 20,
                  ),
                  label: 'Reward')
            ]),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: purpleColor,
          onPressed: () {},
          child: Image.asset(
            'assets/images/ic_plus_circle.png',
            width: 24,
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget buildProfile() {
    return Container(
      margin: const EdgeInsets.only(top: 42),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Howdy,',
                style:
                    grayTextStyle.copyWith(fontWeight: regular, fontSize: 16),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                'shaynahan',
                style:
                    blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 20),
              )
            ],
          ),
          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/images/img_profile.png'))),
            child: Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 16,
                height: 16,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: whiteColor),
                child: Center(
                  child: Icon(
                    Icons.check_circle,
                    color: greenColor,
                    size: 14,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildWalletCard() {
    return Container(
      margin: const EdgeInsets.only(top: 32),
      padding: const EdgeInsets.only(left: 30, top: 30),
      width: double.infinity,
      height: 220,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/img_bg_card.png'))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Shayna Hanna',
            style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
          ),
          const SizedBox(
            height: 28,
          ),
          Text(
            '**** **** **** 1280',
            style: whiteTextStyle.copyWith(
                fontSize: 18, fontWeight: medium, letterSpacing: 6),
          ),
          const SizedBox(
            height: 21,
          ),
          Text(
            'Balance',
            style: whiteTextStyle.copyWith(fontSize: 14, fontWeight: regular),
          ),
          Text(
            'Rp 12.500',
            style: whiteTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
          )
        ],
      ),
    );
  }

  Widget buildLevel() {
    return Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 22),
        width: 327,
        // height: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: whiteColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Level 1',
                  style:
                      blackTextStyle.copyWith(fontSize: 14, fontWeight: medium),
                ),
                Spacer(),
                Text(
                  '55% ',
                  style: greenTextStyle.copyWith(
                      fontSize: 14, fontWeight: semiBold),
                ),
                Text(
                  'of Rp 20.000',
                  style: blackTextStyle.copyWith(
                      fontSize: 14, fontWeight: semiBold),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(55),
              child: LinearProgressIndicator(
                minHeight: 5,
                value: 0.55,
                valueColor: AlwaysStoppedAnimation(greenColor),
                backgroundColor: lightBackgroundColor,
              ),
            )
          ],
        ));
  }

  Widget buildServices() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Do Something',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HomeServiceItems(
                  iconUrl: 'assets/images/ic_topup.png', title: 'Top Up'),
              HomeServiceItems(
                  iconUrl: 'assets/images/ic_send.png', title: 'Send'),
              HomeServiceItems(
                  iconUrl: 'assets/images/ic_withdraw.png', title: 'Withdraw'),
              HomeServiceItems(
                  iconUrl: 'assets/images/ic_more.png', title: 'More'),
            ],
          ),
          // SizedBox(
          //   width: 16,
          //   height: 8,
          // ),
          // Text('dwdw')
        ],
      ),
    );
  }

  Widget buildLatestTransactions() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Latest Transactions',
          style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
        ),
        Container(
          margin: const EdgeInsets.only(top: 14),
          padding: const EdgeInsets.only(left: 22, top: 22, right: 21),
          width: 327,
          height: 356,
          decoration: BoxDecoration(
              color: whiteColor, borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              HomeLatestTransactionsItems(
                  iconUrl: 'assets/images/ic_transaction_cat1.png',
                  title: 'Top Up',
                  date: 'Yesterday',
                  value: '+450.000'),
              HomeLatestTransactionsItems(
                  iconUrl: 'assets/images/ic_transaction_cat2.png',
                  title: 'Cashback',
                  date: 'Sep 11',
                  value: '+22.000'),
              HomeLatestTransactionsItems(
                  iconUrl: 'assets/images/ic_transaction_cat3.png',
                  title: 'Withdraw',
                  date: 'Sep 2',
                  value: '-5.000'),
              HomeLatestTransactionsItems(
                  iconUrl: 'assets/images/ic_transaction_cat4.png',
                  title: 'Transfer',
                  date: 'Aug 27',
                  value: '-123.500'),
              HomeLatestTransactionsItems(
                  iconUrl: 'assets/images/ic_transaction_cat5.png',
                  title: 'Eletric',
                  date: 'Feb 18',
                  value: '-12.300.000'),
            ],
          ),
        ),
      ]),
    );
  }

  Widget buildSendAgain() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Send Again',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          SizedBox(
            height: 14,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                HomeUserItems(
                    imageUrl: 'assets/images/img_friend1.png',
                    username: 'yuanita'),
                HomeUserItems(
                    imageUrl: 'assets/images/img_friend2.png',
                    username: 'jani'),
                HomeUserItems(
                    imageUrl: 'assets/images/img_friend3.png',
                    username: 'urip'),
                HomeUserItems(
                    imageUrl: 'assets/images/img_friend4.png', username: 'masa')
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildFriendlyTips() {
    return Container(
      margin: EdgeInsets.only(top: 30, bottom: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Friendly Tips',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          SizedBox(
            height: 14,
          ),
          Wrap(
            spacing: 17,
            runSpacing: 18,
            children: [
              HomeTipsItems(
                  imageUrl: 'assets/images/img_friendly_tips1.png',
                  title: 'Best tips for using\na credit card',
                  url: 'https://www.google.com'),
              HomeTipsItems(
                  imageUrl: 'assets/images/img_friendly_tips2.png',
                  title: 'Great hack to get\nbetter advices',
                  url: 'https://pub.dev/'),
              HomeTipsItems(
                  imageUrl: 'assets/images/img_friendly_tips3.png',
                  title: 'Spot the good pie\nof finance model',
                  url: 'https://www.facebook.com'),
              HomeTipsItems(
                  imageUrl: 'assets/images/img_friendly_tips4.png',
                  title: 'Save more penny\nbuy this instead',
                  url: 'https://www.instagram.com'),
            ],
          ),
        ],
      ),
    );
  }
}
