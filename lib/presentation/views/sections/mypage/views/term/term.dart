import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:pokerspot_partner_app/common/constants/sizes.dart';
import 'package:pokerspot_partner_app/presentation/widgets/app_bar/app_bar.dart';

class TermView extends StatelessWidget {
  const TermView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(text: '약관 및 정책'),
      body: Container(
        padding: const EdgeInsets.all(padding16),
        child: SizedBox.expand(
            child: FutureBuilder<String>(
          future: _fetchHtmlSource(),
          builder: (_, snapshot) {
            return SingleChildScrollView(
              child: Html(data: snapshot.data ?? ''),
            );
          },
        )),
      ),
    );
  }

  Future<String> _fetchHtmlSource() async {
    try {
      Dio dio = Dio();
      Response response = await dio.get(
        'https://pokerspot-policy-docs.s3.ap-northeast-2.amazonaws.com/partner-tos-230606.html',
      );
      String htmlSource = response.data.toString();
      return htmlSource;
    } catch (e) {
      return '';
    }
  }
}
