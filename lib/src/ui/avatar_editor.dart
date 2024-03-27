
import 'package:avatar_creator/src/data/models/skin.dart';
import 'package:flutter/material.dart';

import '../data/models/cloth.dart';

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

  final List<Skin> _skins = [];
  final List<Cloth> _cloths = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SvgPicture.string(ClothDatabase.generateData(clothType: "CollarSweater")),
        Flexible(
          child: TabBarView(
            physics: const BouncingScrollPhysics(),
            controller: _tabController,
            children: [
              _buildGrid(_skins),
              _buildGrid(_cloths),
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
