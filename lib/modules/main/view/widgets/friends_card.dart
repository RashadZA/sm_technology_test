import 'package:flutter/material.dart';
import 'package:sm_technology_test/core/components/widgets/image_handle_from_network_network.dart';
import 'package:sm_technology_test/core/utils/design_utils.dart';
import 'package:sm_technology_test/modules/main/model/friends_data_model.dart';

class FriendsCard extends StatelessWidget {
  final Friend friend;
  const FriendsCard({super.key, required this.friend});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: ImageHandleFromNetworkWidget(
              imageUrl: friend.picture?.medium ?? "", height: 100,
              width: 100,
              radius: 100,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "${friend.name?.title ?? ""} ${friend.name?.first ?? ""} ${friend.name?.last ?? ""}",
            maxLines: 2,
            style: AppTextTheme.text16,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "${friend.location?.country ?? ""}",
            maxLines: 1,
            style: AppTextTheme.text16,
          ),
        ],
      ),
    );
  }
}
