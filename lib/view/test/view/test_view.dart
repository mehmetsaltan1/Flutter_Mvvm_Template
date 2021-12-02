import 'package:flutter/material.dart';
import 'package:flutter_mvvm_template/core/base/state/base_state.dart';
import 'package:flutter_mvvm_template/core/base/widget/base_widget.dart';
import 'package:flutter_mvvm_template/view/test/viewmodel/test_view_model.dart';

class Testview extends StatefulWidget {
  Testview({Key key}) : super(key: key);

  @override
  _TestviewState createState() => _TestviewState();
}

class _TestviewState extends BaseState<Testview> {
  @override
  Widget build(BuildContext context) {
    return BaseView<TestViewModel>(
        viewmodel: TestViewModel(), onPageBuilder: (context, value) => Text("data")); //Base widgettan türettiğimiz sayfa
    // return Container(
    //   height: dynamicHeight(0.1), // Testview widget'ımız BaseState classından extend olduğu için bütün özelliklerini kullanabiliyor
    //                               // Bunu yapmamızın nedeni uygulamada değişiklik yapacağımız bir global değişkenin değerini her
    //                               // sayfada güncellemek yerine BaseState güncelleyip bunu sağlamamız
    //   color: themeData.primaryColor,
    // );
  }
}
