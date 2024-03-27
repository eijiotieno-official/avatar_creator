import 'package:avatar_creator/src/data/databases/clothe_database.dart';
import 'package:avatar_creator/src/data/databases/skin_database.dart';
import 'package:avatar_creator/src/data/models/skin.dart';
import 'package:flutter/material.dart';

import '../data/models/clothe.dart';

class AvatarEditor extends StatefulWidget {
  const AvatarEditor({super.key});

  @override
  State<AvatarEditor> createState() => _AvatarEditorState();
}

class _AvatarEditorState extends State<AvatarEditor>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 8, vsync: this);
    super.initState();
  }

  final List<Skin> _skins = SkinDatabase.data;
  final List<Clothe> _clothes = ClotheDatabase.data;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SvgPicture.string(ClotheDatabase.generateData(clotheType: "CollarSweater")),
        Flexible(
          child: TabBarView(
            physics: const BouncingScrollPhysics(),
            controller: _tabController,
            children: [
              _buildGrid(_skins),
              _buildGrid(_clothes),
              _buildGrid([]),
              _buildGrid([]),
              _buildGrid([]),
              _buildGrid([]),
              _buildGrid([]),
              _buildGrid([]),
            ],
          ),
        ),
        TabBar(
          physics: const BouncingScrollPhysics(),
          controller: _tabController,
          isScrollable: true,
          tabAlignment: TabAlignment.center,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorWeight: 5,
          tabs: [
            const Tab(
              icon: Icon(Icons.face_rounded),
            ),
            const Tab(
              icon: Icon(Icons.hail_rounded),
            ),
            const Tab(
              icon: Icon(Icons.hail_rounded),
            ),
            const Tab(
              icon: Icon(Icons.hail_rounded),
            ),
            const Tab(
              icon: Icon(Icons.hail_rounded),
            ),
            const Tab(
              icon: Icon(Icons.hail_rounded),
            ),
            const Tab(
              icon: Icon(Icons.hail_rounded),
            ),
            const Tab(
              icon: Icon(Icons.hail_rounded),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildGrid(List items) => GridView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: items.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
        ),
        itemBuilder: (context, index) {
          dynamic item = items[index];
          return;
        },
      );
}
