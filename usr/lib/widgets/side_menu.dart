import 'package:flutter/material.dart';
import 'package:couldai_user_app/utils/app_colors.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: AppColors.sidebarBackground,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.sports_tennis, color: AppColors.primary, size: 32),
                const SizedBox(width: 12),
                Text(
                  'LOLO Admin',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Colors.white,
                      ),
                ),
              ],
            ),
          ),
          const Divider(color: Colors.white24, height: 1),
          Expanded(
            child: ListView(
              children: [
                _MenuItem(
                  icon: Icons.dashboard_outlined,
                  title: 'Dashboard',
                  isSelected: true,
                  onTap: () {},
                ),
                _MenuItem(
                  icon: Icons.people_alt_outlined,
                  title: 'Members',
                  onTap: () {},
                ),
                _MenuItem(
                  icon: Icons.calendar_today_outlined,
                  title: 'Bookings',
                  onTap: () {},
                ),
                _MenuItem(
                  icon: Icons.sports_kabaddi_outlined,
                  title: 'Coaches',
                  onTap: () {},
                ),
                _MenuItem(
                  icon: Icons.payment_outlined,
                  title: 'Payments',
                  onTap: () {},
                ),
                _MenuItem(
                  icon: Icons.settings_outlined,
                  title: 'Settings',
                  onTap: () {},
                ),
              ],
            ),
          ),
          const Divider(color: Colors.white24, height: 1),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextButton.icon(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/login');
              },
              icon: const Icon(Icons.logout, color: Colors.white70),
              label: const Text(
                'Logout',
                style: TextStyle(color: Colors.white70),
              ),
              style: TextButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final bool isSelected;

  const _MenuItem({
    required this.icon,
    required this.title,
    required this.onTap,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: isSelected ? AppColors.primary.withOpacity(0.2) : Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Row(
            children: [
              Icon(icon, color: isSelected ? AppColors.primary : Colors.white70, size: 22),
              const SizedBox(width: 16),
              Text(
                title,
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.white70,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
