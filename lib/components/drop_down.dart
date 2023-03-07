
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../provider/models_provider.dart';

class DropDownW extends StatefulWidget {
  const DropDownW({super.key});

  @override
  State<DropDownW> createState() => _DropDownWState();
}

class _DropDownWState extends State<DropDownW> {
  String? currentModel1;

  @override
  Widget build(BuildContext context) {
    final gptModelProvider =
        Provider.of<ModelsProvider>(context, listen: false);
    currentModel1 = gptModelProvider.currentmodel;
    return FutureBuilder(
      future: gptModelProvider.Allmodels(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(
            child: Text(
              snapshot.error.toString(),
            ),
          );
        }
        return snapshot.data == null || snapshot.data!.isEmpty
            ? const SizedBox.shrink()
            : FittedBox(
                child: DropdownButton(
                  items: List<DropdownMenuItem<String>>.generate(
                      snapshot.data!.length,
                      (index) => DropdownMenuItem(
                            value: snapshot.data![index].id,
                            child: Text(
                              snapshot.data![index].id,
                            ),
                          )),
                  value: currentModel1,
                  onChanged: (value) {
                    setState(() {
                      currentModel1 = value.toString();
                    });
                    gptModelProvider.setcurrent(value.toString());
                  },
                ),
              );
      },
    );
  }
}
