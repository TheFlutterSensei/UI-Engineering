import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final String name;
  final String subtitle;

  const ProfileHeader({
    super.key,
    required this.name,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Row(
      children: [
        SizedBox(
          width: 64,
          height: 64,
          child: Stack(
            children: [
              const CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                  'https://i.pravatar.cc/150?img=12',
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Material(
                  color: colorScheme.primary,
                  shape: const CircleBorder(),
                  child: InkWell(
                    onTap: () {},
                    customBorder: const CircleBorder(),
                    child: const Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(Icons.edit, size: 14, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_horiz),
              iconSize: 20,
              visualDensity: VisualDensity.compact,
              tooltip: 'More options',
            ),
          ],
        ),
      ],
    );
  }
}
