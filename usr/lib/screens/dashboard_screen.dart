import 'package:flutter/material.dart';
import 'package:couldai_user_app/widgets/side_menu.dart';
import 'package:couldai_user_app/widgets/dashboard_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const SideMenu(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dashboard',
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 32),
                  Wrap(
                    spacing: 24,
                    runSpacing: 24,
                    children: const [
                      DashboardCard(
                        icon: Icons.people_alt_outlined,
                        title: 'Total Members',
                        value: '152',
                        color: Colors.blue,
                      ),
                      DashboardCard(
                        icon: Icons.event_available_outlined,
                        title: 'Active Bookings',
                        value: '34',
                        color: Colors.green,
                      ),
                      DashboardCard(
                        icon: Icons.sports_kabaddi_outlined,
                        title: 'Coaches',
                        value: '8',
                        color: Colors.orange,
                      ),
                      DashboardCard(
                        icon: Icons.attach_money_outlined,
                        title: 'Monthly Revenue',
                        value: '\$12,500',
                        color: Colors.purple,
                      ),
                    ],
                  )
                  // Add more dashboard widgets here, like charts or recent activity
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
