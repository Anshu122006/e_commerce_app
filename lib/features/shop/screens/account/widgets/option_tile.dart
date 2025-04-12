import 'package:flutter/material.dart';

class COptionTile extends StatelessWidget {
  const COptionTile({
    super.key,
    required this.leadingIcon,
    required this.title,
    required this.subtitle,
    this.trailing,
    this.onPressed,
  });

  final IconData leadingIcon;
  final String title;
  final String subtitle;
  final Widget? trailing;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: ListTile(
        leading: Icon(leadingIcon, color: Theme.of(context).primaryColor),
        title: Text(title, style: Theme.of(context).textTheme.labelLarge),
        subtitle: Text(
          subtitle,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        trailing: trailing,
      ),
    );
  }
}
