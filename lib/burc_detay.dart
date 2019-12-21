import 'package:flutter/material.dart';
import 'package:flutter_burc_rehberi/burc_liste.dart';
import 'package:flutter_burc_rehberi/models/burc.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatelessWidget {

  int gelenIndex;
  Burc secilenBurc;
  BurcDetay(this.gelenIndex);

  @override
  Widget build(BuildContext context) {

    secilenBurc=BurcListesi.tumBurclar[gelenIndex];



    return Scaffold(

      primary: true,
      body: CustomScrollView(
        primary: true,
        slivers: <Widget>[

          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            primary: true,
            backgroundColor: Colors.pink,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("images/"+secilenBurc.burcBuyukResim, fit: BoxFit.cover,),
              centerTitle:true,
              title: Text(secilenBurc.burcAdi+" Burcu ve Özellikleri"),
            ),


          ),

          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(9),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
              color: Colors.pink.shade100,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: SingleChildScrollView(
                child: Text(secilenBurc.burcDetayi, style: TextStyle(fontSize: 19, color: Colors.black),),
              ),
            ),
          )


        ],
      ),



    );
  }


}
