import 'package:flutter/material.dart';
import 'package:couldai_user_app/utils/app_colors.dart';

class WebNavBar extends StatelessWidget {
  const WebNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 40),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/'),
            child: Row(
              children: [
                const Icon(Icons.sports_tennis, color: AppColors.primary, size: 32),
                const SizedBox(width: 10),
                Text(
                  'LOLO ACADEMY',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                      ),
                ),
              ],
            ),
          ),
          if (MediaQuery.of(context).size.width > 800)
            Row(
              children: [
                _NavBarItem(title: 'Home', onTap: () => Navigator.pushNamed(context, '/')),
                _NavBarItem(title: 'About', onTap: () {}),
                _NavBarItem(title: 'Programs', onTap: () {}),
                _NavBarItem(title: 'Coaches', onTap: () {}),
                _NavBarItem(title: 'Contact', onTap: () {}),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  ),
                  child: const Text('Book Now'),
                ),
                const SizedBox(width: 10),
                TextButton(
                  onPressed: () => Navigator.pushNamed(context, '/login'),
                  child: const Text('Admin Login'),
                ),
              ],
            )
          else
            IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                // Open drawer or mobile menu
              },
            ),
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const _NavBarItem({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(4),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              color: AppColors.textPrimary,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
