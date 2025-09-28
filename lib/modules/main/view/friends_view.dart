import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sm_technology_test/core/components/widgets/buttons/core_button.dart';
import 'package:sm_technology_test/core/components/widgets/buttons/icon_custom_button.dart';
import 'package:sm_technology_test/core/components/widgets/image_handle_from_network_network.dart';
import 'package:sm_technology_test/core/utils/design_utils.dart';
import 'package:sm_technology_test/modules/main/controller/friends_controller.dart';
import 'package:sm_technology_test/modules/main/view/widgets/friends_card.dart';

class Friends extends GetWidget<FriendsController> {
  const Friends({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          return Obx(
                () => controller.isLoading.isTrue
                ? CircularProgressIndicator()
                : RefreshIndicator(
              onRefresh: () async {
                controller.getData();
              },
              child: controller.friendList.isNotEmpty
                  ? SizedBox(
                width: Get.width,
                height: Get.height,
                    child: ListView(
                      padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 70, bottom: 60),
                      children: [
                        Row(
                          spacing: 15,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconCustomButton(
                              onPressed: () => Get.back(),
                              iconData: Icons.arrow_back_ios_new_sharp,
                              iconColor: iconColor,
                              // iconSize: 25,
                              // backgroundColor: primaryColor,
                            ),
                            Flexible(child: Text("User List",style: AppTextTheme.text24,))
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.zero,
                          itemCount: controller.friendList.length,
                          separatorBuilder: (context,index)=> const SizedBox(height: 16,),
                                        itemBuilder: (context, index) => Container(
                                          // height: 65,
                                          width: Get.width,
                                          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                          decoration: BoxDecoration(
                                            boxShadow: containerShadow,
                                            color: whiteColor,
                                            borderRadius: BorderRadius.circular(defaultBorderRadius),
                                          ),
                                          child: Row(
                                            spacing: 10,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              ImageHandleFromNetworkWidget(
                                                radius: 100,
                                                width: 50,
                                                height: 50,
                                                imageUrl: controller.friendList[index].picture?.medium ?? "",
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "${controller.friendList[index].name?.title ?? ""} ${controller.friendList[index].name?.first ?? ""} ${controller.friendList[index].name?.last ?? ""}",
                                                  style: AppTextTheme.text18.copyWith(
                                                    overflow: TextOverflow.visible,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                      ],
                    ),
                  )
                  : Center(
                child: SizedBox(
                  width: 200,
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "No Data Found",
                        style: AppTextTheme.text16,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            controller.init();
                          },
                          child: Text(
                            "Refresh",
                            style: AppTextTheme.text16,
                          ))
                    ],
                  ).defaultContainer(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
