import 'package:flutter/material.dart';
import 'package:trilhaapp/shared/widget/app_images.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key, required List<Widget> children});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return ListViewPage(
      children: [
        ListTile(
          leading: Image.asset(AppImages.user2),
          title: Text("Usuário 2:"),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("Ola! tudo bem?"), Text("08:59")],
          ),
          trailing: PopupMenuButton<String>(
            onSelected: (menu) {},
            itemBuilder: (BuildContext bc) {
              return <PopupMenuEntry<String>>[
                PopupMenuItem<String>(value: "opcao1", child: Text("Opção 1")),
                PopupMenuItem<String>(value: "opcao2", child: Text("Opção 2")),
                PopupMenuItem<String>(value: "opcao3", child: Text("Opção 3")),
              ];
            },
          ),

          isThreeLine: true,
        ),

        Image.asset(AppImages.user1),
        Image.asset(AppImages.user2),
        Image.asset(AppImages.user3),
        Image.asset(AppImages.paisagem1),
        Image.asset(AppImages.paisagem2),
        Image.asset(AppImages.paisagem3),
      ],
    );
  }
}
