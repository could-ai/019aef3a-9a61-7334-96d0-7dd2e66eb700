import 'package:flutter/material.dart';
import 'package:couldai_user_app/utils/app_colors.dart';
import 'package:couldai_user_app/widgets/web_nav_bar.dart';
import 'package:couldai_user_app/widgets/footer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const WebNavBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _buildHeroSection(context),
                  _buildAboutSection(context),
                  _buildProgramsSection(context),
                  _buildCoachesSection(context),
                  const Footer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeroSection(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 600,
      decoration: const BoxDecoration(
        color: AppColors.textPrimary, // Placeholder for image
        image: DecorationImage(
          image: NetworkImage('https://images.unsplash.com/photo-1626224583764-84786c71971e?q=80&w=2070&auto=format&fit=crop'),
          fit: BoxFit.cover,
          opacity: 0.4,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'LOLO BADMINTON ACADEMY',
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              'Train Hard. Play Smart. Win Big.',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.white70,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              child: const Text('JOIN NOW'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAboutSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      color: Colors.white,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1200),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ABOUT US',
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: AppColors.primary,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Premier Badminton Training Center',
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          color: AppColors.textPrimary,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'At LOLO Badminton Academy, we are dedicated to nurturing talent and promoting the sport of badminton. Whether you are a beginner looking to learn the basics or a professional aiming for gold, our world-class facilities and expert coaches are here to guide you.',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: AppColors.textSecondary,
                          height: 1.6,
                        ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 50),
            Expanded(
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: NetworkImage('https://images.unsplash.com/photo-1613918108466-292b78a8ef95?q=80&w=2076&auto=format&fit=crop'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProgramsSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      color: AppColors.background,
      width: double.infinity,
      child: Column(
        children: [
          Text(
            'OUR PROGRAMS',
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 50),
          Wrap(
            spacing: 30,
            runSpacing: 30,
            alignment: WrapAlignment.center,
            children: [
              _buildProgramCard(
                context,
                title: 'Beginner Training',
                description: 'Learn the fundamentals of grip, footwork, and basic shots.',
                icon: Icons.sports_tennis,
              ),
              _buildProgramCard(
                context,
                title: 'Advanced Coaching',
                description: 'Intensive training for competitive players focusing on strategy and fitness.',
                icon: Icons.emoji_events,
              ),
              _buildProgramCard(
                context,
                title: 'Private Lessons',
                description: 'One-on-one sessions with our top coaches for personalized improvement.',
                icon: Icons.person,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProgramCard(BuildContext context, {required String title, required String description, required IconData icon}) {
    return Container(
      width: 350,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 50, color: AppColors.primary),
          const SizedBox(height: 20),
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.textSecondary,
                ),
          ),
        ],
      ),
    );
  }

  Widget _buildCoachesSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: [
          Text(
            'MEET OUR COACHES',
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  color: AppColors.textPrimary,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 50),
          Wrap(
            spacing: 40,
            runSpacing: 40,
            alignment: WrapAlignment.center,
            children: [
              _buildCoachCard(context, 'Coach Mike', 'Head Coach', 'https://randomuser.me/api/portraits/men/32.jpg'),
              _buildCoachCard(context, 'Coach Sarah', 'Junior Specialist', 'https://randomuser.me/api/portraits/women/44.jpg'),
              _buildCoachCard(context, 'Coach David', 'Fitness Trainer', 'https://randomuser.me/api/portraits/men/85.jpg'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCoachCard(BuildContext context, String name, String role, String imageUrl) {
    return Column(
      children: [
        CircleAvatar(
          radius: 60,
          backgroundImage: NetworkImage(imageUrl),
        ),
        const SizedBox(height: 20),
        Text(
          name,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        Text(
          role,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppColors.primary,
              ),
        ),
      ],
    );
  }
}
