import 'dart:io';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      this.title,
      this.leading,
      this.backgroundColor,
      this.showBackButton = false});

  final String? title;
  final Widget? leading;
  final Color? backgroundColor;
  final bool showBackButton;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        backgroundColor: backgroundColor ?? Colors.black,
        title: Text(title ?? ''),
        centerTitle: true,
        leading: showBackButton
            ? (Platform.isAndroid
                ? InkWell(
                    child: const Icon(Icons.arrow_back),
                    onTap: () => Navigator.pop(context),
                  )
                : InkWell(
                    child: const Icon(Icons.arrow_back_ios),
                    onTap: () => Navigator.pop(context),
                  ))
            : const SizedBox.shrink(),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(90);
}
