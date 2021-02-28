import 'package:flutter/material.dart';
import 'package:flutter_codigo_components/constants.dart';
import 'package:flutter_codigo_components/pages/alerts_page.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: Image.asset(
                    "assets/image/image.png",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    "COMPONENTS",
                    style: titlePageStyle,
                  ),
                ),
                ItemMenuWidget(
                  title: "Alestas",
                  subtitle: "Aqui iran el modulo de alertas",
                  icon: Icons.notifications,
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AlertPage()));
                  },
                ),
                ItemMenuWidget(
                  title: "Avatar",
                  subtitle: "Presionaste al avatar",
                  icon: Icons.person,
                  onTap: (){
                    print("presionastes al avatar");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ItemMenuWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Function onTap;

  const ItemMenuWidget({this.title, this.subtitle, this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xff2A3950), borderRadius: BorderRadius.circular(12.0)),
      child: ListTile(
        onTap: onTap,
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.chevron_right),
        leading: Icon(
          icon,
          size: 28.0,
        ),
      ),
    );
  }
}
