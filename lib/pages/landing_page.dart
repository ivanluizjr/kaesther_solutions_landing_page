import 'package:flutter/material.dart';

import '../sections/about_section.dart';
import '../sections/contact_section.dart';
import '../sections/cta_section.dart';
import '../sections/footer_section.dart';
import '../sections/hero_section.dart';
import '../sections/nav_bar_section.dart';
import '../sections/services_section.dart';
import '../widgets/particles_background.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _servicesKey = GlobalKey();
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  void _scrollTo(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOutCubic,
      );
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const ParticlesBackground(),
          CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverToBoxAdapter(
                child: NavBarSection(
                  onServicesTap: () => _scrollTo(_servicesKey),
                  onAboutTap: () => _scrollTo(_aboutKey),
                  onContactTap: () => _scrollTo(_contactKey),
                ),
              ),
              SliverToBoxAdapter(
                child: HeroSection(
                  onServicesPressed: () => _scrollTo(_servicesKey),
                ),
              ),
              SliverToBoxAdapter(
                child: KeyedSubtree(
                  key: _servicesKey,
                  child: const ServicesSection(),
                ),
              ),
              SliverToBoxAdapter(
                child: KeyedSubtree(
                  key: _aboutKey,
                  child: const AboutSection(),
                ),
              ),
              const SliverToBoxAdapter(child: CtaSection()),
              SliverToBoxAdapter(
                child: KeyedSubtree(
                  key: _contactKey,
                  child: const ContactSection(),
                ),
              ),
              const SliverToBoxAdapter(child: FooterSection()),
            ],
          ),
        ],
      ),
    );
  }
}
