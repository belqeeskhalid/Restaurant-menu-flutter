import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class usermodel {
  Icon icon;
  String name;

  usermodel({
    required this.icon,
    required this.name,
  });
}

class Menu extends StatelessWidget {
  List<usermodel> model = [
    usermodel(icon: Icon(Icons.home), name: "الصفحة الرئيسية"),
    usermodel(icon: Icon(Icons.login), name: " تسجيل الدخول"),
    usermodel(icon: Icon(Icons.restaurant_menu), name: " الوجبات"),
    usermodel(icon: Icon(Icons.person), name: " العملاء"),
    usermodel(icon: Icon(Icons.add_chart_rounded), name: " الطلبات"),
    usermodel(icon: Icon(Icons.work), name: " الخدمات"),
    usermodel(icon: Icon(Icons.phone), name: " خدمة التوصيل"),
    usermodel(icon: Icon(Icons.settings), name: " الاعدادات"),
    usermodel(icon: Icon(Icons.exit_to_app), name: " خروج"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Foods"),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          child: Column(
            children: [
              Container(
                color: Colors.purple,
                width: double.infinity,
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black45,
                      radius: 50,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "مطعم الدار",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                height: 30,
                color: Colors.white,
                child: Center(
                  child: Stack(
                    children: [
                      Container(
                        color: Colors.red,
                        height: 5,
                      ),
                    ],
                  ),
                ),
              ),
/////////////////////////
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) => biuld(model[index]),
                    separatorBuilder: (context, index) => SizedBox(
                      height: 5,
                    ),
                    shrinkWrap: true,
                    itemCount: model.length),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget biuld(usermodel model) => Container(
    color: Colors.blue,
    height: 70,
    child: Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: model.icon,
          color: Colors.black45,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text(

                    "${model.name}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,

                    ),



                  )),
            ],
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.keyboard_arrow_right_outlined,
              color: Colors.black45,
              size: 30,
            )),
      ],
    ),
  );
}
