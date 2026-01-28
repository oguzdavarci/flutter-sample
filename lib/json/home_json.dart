import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sample/json/models/Urun.dart';

class HomeJson extends StatefulWidget {
  const HomeJson({super.key});

  @override
  State<HomeJson> createState() => _HomeJsonState();
}

class _HomeJsonState extends State<HomeJson> {
  Urunler? _veriler;
  List<Urun> _urunler = [];

  void _loadData() async {
    final dataString = await rootBundle.loadString("assets/files/data.json");
    final dataJson = jsonDecode(dataString);

    _veriler = Urunler.fromJson(dataJson);
    _urunler = _veriler!.urunler;
    setState(() {});
  }

  void _filterData(int id) {
    _urunler = _veriler!.urunler
        .where((verilerEleman) => verilerEleman.kategori == id)
        .toList();

    setState(() {});
  }

  void _resetFilter() {
    _urunler = _veriler!.urunler;
    setState(() {});
  }

  @override
  initState() {
    _loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _veriler == null
            ? const CircularProgressIndicator()
            : Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: _resetFilter,
                    child: Text('Tüm Ürünler'),
                  ),
                  _kategoriView(),
                  urunlerView(),
                ],
              ),
      ),
    );
  }

  ListView urunlerView() {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: _urunler.length,
      itemBuilder: (context, index) {
        final Urun urun = _urunler[index];
        return ListTile(
          leading: Image.network(
            urun.resim,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
          title: Text(urun.isim),
        );
      },
      separatorBuilder: (context, index) => Divider(height: 10),
    );
  }

  Row _kategoriView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(_veriler!.kategoriler.length, (index) {
        final kategori = _veriler!.kategoriler[index];
        return GestureDetector(
          onTap: () => _filterData(kategori.id),
          child: Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(kategori.isim),
          ),
        );
      }),
    );
  }
}
