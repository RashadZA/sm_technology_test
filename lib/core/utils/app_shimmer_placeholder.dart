part of 'design_utils.dart';

class ListViewPlaceHolder extends StatelessWidget {
  final int itemCount;
  final double height;
  final EdgeInsetsGeometry padding;

  const ListViewPlaceHolder({
    super.key,
    this.height = 150,
    this.itemCount = 6,
    this.padding = const EdgeInsets.symmetric(
      vertical: 10,
      horizontal: 10,
    ),
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: padding,
      itemCount: itemCount,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Container(
              height: height,
              width: double.infinity,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(defaultBorderRadius),
              ),
            ),
            itemCount != index +1 ? const SizedBox(height: 10,) : const SizedBox(height: 0.0,width: 0.0,),
          ],
        );
      },
    );
  }
}
