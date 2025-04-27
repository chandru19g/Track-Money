import 'package:flutter/material.dart';
import 'package:trackmoney/core/styles/styles.dart';
import 'package:trackmoney/presentation/widgets/text_widgets/gradient_text.dart';
import 'package:trackmoney/presentation/widgets/button_widgets/icon_button_widget.dart';
import 'package:trackmoney/presentation/widgets/sizedbox_widgets.dart';
import 'package:trackmoney/presentation/widgets/text_widgets/text_widget.dart';

class PrimaryAppbarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final bool isGradientTitle;
  final String title;
  final String iconUrl;
  final double toolbarHeight;
  final bool? leading;
  final bool automaticallyImplyLeading;
  final Function()? onTapped;

  const PrimaryAppbarWidget({
    super.key,
    required this.title,
    required this.iconUrl,
    required this.isGradientTitle,
    this.leading,
    this.toolbarHeight = kToolbarHeight,
    this.automaticallyImplyLeading = false,
    this.onTapped,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      backgroundColor: Styles.bgGreyColor,
      title: isGradientTitle
          ? GradientText(
              text: title,
              isGradientApplied: false,
              style: TextStyle(fontWeight: FontWeight.w600),
            )
          : TextWidget(
              title,
              color: Styles.blackColor,
              size: 24.0,
              weight: FontWeight.w600,
            ),
      actions: [
        IconButtonWidget(
          iconUrl: iconUrl,
          onTap: () {},
        ),
        const PrimaryWidthSizeddBox(),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight);
}
