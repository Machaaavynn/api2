import 'package:api2/Api/PostController.dart';
import 'package:api2/Api/TeamDetailView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class PostView extends StatelessWidget {
  final PostController postController = Get.put(PostController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Club Bola'),
      ),
      body: Obx(() {
        if (postController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          itemCount: postController.postList.length,
          itemBuilder: (context, index) {
            final post = postController.postList[index];
            return Card(
              child: ListTile(
                leading: post.strBadge.isNotEmpty
                    ? Image.network(
                        post.strBadge,
                        width: 50,
                        height: 50,
                        errorBuilder: (context, error, stackTrace) => Icon(Icons.broken_image),
                      )
                    : Icon(Icons.image),
                title: Text(post.strTeam),
                onTap: () {
                  // Navigasi ke detailtim 
                  Get.to(TeamDetailView(post: post));
                },
              ),
            );
          },
        );
      }),
    );
  }
}
