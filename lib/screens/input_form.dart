// ignore_for_file: prefer_const_constructors

import 'package:belajar/screens/output.dart';
import 'package:flutter/material.dart';
import '../helpers/size_helper.dart';
import 'package:intl/intl.dart';

class BelajarForm extends StatefulWidget {
  const BelajarForm({super.key});

  @override
  State<BelajarForm> createState() => _BelajarFormState();
}

class _BelajarFormState extends State<BelajarForm> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController namaController = TextEditingController();
  TextEditingController jkController = TextEditingController();
  TextEditingController tanggal_lahirController = TextEditingController();
  String _pilihAgama = "";
  final agama = [
    "Islam",
    "Kristen",
  ];
  void initState() {
    tanggal_lahirController.text = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  elevation: 4,
                  margin: EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: EdgeInsets.all(24),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Formulir Biodata",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          TextFormField(
                            controller: namaController,
                            decoration: InputDecoration(
                                hintText: "Nama Lengkap",
                                border: OutlineInputBorder()),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'input nama';
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          TextFormField(
                            controller: jkController,
                            decoration: InputDecoration(
                                hintText: "Jenis Kelamin",
                                border: OutlineInputBorder()),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'input Jenis Kelamin';
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          TextFormField(
                            controller: tanggal_lahirController,
                            decoration: InputDecoration(
                                hintText: "Tanggal Lahir",
                                border: OutlineInputBorder()),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'input Tanggal lahir';
                              }
                              return null;
                            },
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1900),
                                  lastDate: DateTime(2100));
                              if (pickedDate != null) {
                                String tgl =
                                    DateFormat('yyyy-MM-dd').format(pickedDate);
                                setState(() {
                                  tanggal_lahirController.text = tgl;
                                });
                              } else {
                                print('Tanggal Lahit Tidak di pilih');
                              }
                            },
                          ),
                          SizedBox(
                            height: 18,
                          ),
                          DropdownButtonFormField(
                              decoration: InputDecoration(
                                  hintText: "Agama",
                                  labelText: "Pilih Agama",
                                  border: OutlineInputBorder()),
                              items: agama.map((String items) {
                                int index = 0;
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  _pilihAgama = newValue!;
                                });
                              }),
                          SizedBox(
                            height: 18,
                          ),
                          SizedBox(
                            width: displayWidth(context) * 0.8,
                            height: displayHeight(context) * 0.075,
                            child: ElevatedButton(
                                child: Text(
                                  "simpan",
                                  style: TextStyle(color: Colors.black),
                                ),
                                onPressed: () {
                                  _submit();
                                }),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    } else {
      _formKey.currentState!.save();
      String nama = namaController.text;
      String jk = jkController.text;
      String agama = _pilihAgama;
      String tanggal_lahir = tanggal_lahirController.text;
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OutputFormScreen(
                nama: nama, jk: jk, tanggal_lahir: tanggal_lahir, agama: agama),
          ));
    }
  }
}
