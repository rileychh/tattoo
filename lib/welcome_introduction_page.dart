import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeIntroductionPage extends StatefulWidget {
  const WelcomeIntroductionPage({super.key});

  @override
  State<WelcomeIntroductionPage> createState() =>
      _WelcomeIntroductionPageState();
}

class _WelcomeIntroductionPageState extends State<WelcomeIntroductionPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);
    _animation = Tween<double>(
      begin: -5,
      end: 5,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(flex: 1),

                // Logo and Title
                SvgPicture.asset(
                  'assets/tat_icon.svg',
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Text(
                  'Project Tattoo',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),

                Spacer(flex: 1),

                // Features List
                _FeatureCard(
                  title: '查課表',
                  description: '快速查看課表和課程資訊，並可快速切換學期。',
                  icon: Icons.calendar_month,
                ),
                _FeatureCard(
                  title: '看成績',
                  description: '即時查詢各科成績與學分，整合歷年成績紀錄。',
                  icon: Icons.bar_chart,
                ),
                _FeatureCard(
                  title: '北科生活',
                  description: '彙整其他校園生活資訊，更多功能敬請期待。',
                  icon: Icons.location_city,
                ),

                Spacer(flex: 2),

                // Logo
                SvgPicture.asset(
                  'assets/npc_horizontal.svg',
                  height: 24,
                  colorFilter: ColorFilter.mode(
                    Colors.grey[600]!,
                    BlendMode.srcIn,
                  ),
                ),

                SizedBox(height: 12),

                // Disclaimer Text
                Text(
                  '由北科程式設計研究社開發\n所有資訊僅供參考，請以學校官方系統為準',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    height: 1.5,
                    color: Colors.grey[600],
                  ),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 12),

                // footer: Animated Scroll Indicator
                AnimatedBuilder(
                  animation: _animation,
                  builder: (context, child) {
                    return Transform.translate(
                      offset: Offset(0, _animation.value),
                      child: child,
                    );
                  },
                  child: Column(
                    spacing: 4.0,
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.keyboard_double_arrow_up,
                        color: Colors.grey[600],
                      ),
                      Text(
                        '向上滑動以繼續',
                        style:
                            Theme.of(
                              context,
                            ).textTheme.bodySmall?.copyWith(
                              color: Colors.grey[600],
                            ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _FeatureCard extends StatelessWidget {
  const _FeatureCard({
    required this.title,
    required this.description,
    required this.icon,
  });

  final String title;
  final String description;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 24,
          children: [
            Icon(icon, size: 28),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 4,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    description,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
