import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/app_colors.dart';

class ProductCard extends StatefulWidget {
  final IconData icon;
  final String title;
  final String tagline;
  final String description;
  final List<String> features;
  final List<Color> gradient;
  final VoidCallback? onAppStoreTap;
  final VoidCallback? onPlayStoreTap;
  final VoidCallback? onPlayStoreKaestherVeiculosTap;
  final VoidCallback? onAppStoreKaestherVeiculosTap;

  const ProductCard({
    super.key,
    required this.icon,
    required this.title,
    required this.tagline,
    required this.description,
    required this.features,
    required this.gradient,
    this.onPlayStoreKaestherVeiculosTap,
    this.onAppStoreKaestherVeiculosTap,
    this.onAppStoreTap,
    this.onPlayStoreTap,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _hovering = true),
      onExit: (_) => setState(() => _hovering = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: 480,
        padding: const EdgeInsets.all(36),
        decoration: BoxDecoration(
          color: _hovering ? AppColors.cardHover : AppColors.cardDefault,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: _hovering
                ? widget.gradient.first.withAlpha(100)
                : widget.gradient.first.withAlpha(40),
            width: _hovering ? 1.5 : 1,
          ),
          boxShadow: _hovering
              ? [
                  BoxShadow(
                    color: widget.gradient.first.withAlpha(40),
                    blurRadius: 50,
                    spreadRadius: 0,
                  ),
                ]
              : [],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Badge "Produto Próprio"
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: widget.gradient),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'PRODUTO PRÓPRIO',
                style: GoogleFonts.inter(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  letterSpacing: 1.2,
                ),
              ),
            ),
            const SizedBox(height: 24),
            // Ícone
            Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: widget.gradient),
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: widget.gradient.first.withAlpha(80),
                    blurRadius: 20,
                  ),
                ],
              ),
              child: Icon(widget.icon, color: Colors.white, size: 32),
            ),
            const SizedBox(height: 20),
            // Título
            Text(
              widget.title,
              style: GoogleFonts.inter(
                fontSize: 24,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 6),
            // Tagline
            Text(
              widget.tagline,
              style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: widget.gradient.first,
              ),
            ),
            const SizedBox(height: 16),
            // Descrição
            Text(
              widget.description,
              style: GoogleFonts.inter(
                fontSize: 15,
                color: Colors.white70,
                height: 1.6,
              ),
            ),
            const SizedBox(height: 24),
            // Features
            ...widget.features.map(
              (f) => Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: widget.gradient),
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      f,
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        color: Colors.white.withAlpha(200),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            if (widget.onAppStoreTap != null ||
                widget.onPlayStoreTap != null ||
                widget.onAppStoreKaestherVeiculosTap != null ||
                widget.onPlayStoreKaestherVeiculosTap != null) ...[
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Disponível em:',
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        color: Colors.white.withAlpha(120),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  if (widget.onAppStoreTap != null)
                    Expanded(
                      child: _StoreButton(
                        icon: FontAwesomeIcons.apple,
                        label: 'App Store',
                        sublabel: 'Disponível na',
                        gradient: widget.gradient,
                        onTap: widget.onAppStoreTap!,
                      ),
                    ),
                  if (widget.onAppStoreTap != null &&
                      widget.onPlayStoreTap != null)
                    const SizedBox(width: 10),
                  if (widget.onPlayStoreTap != null)
                    Expanded(
                      child: _StoreButton(
                        icon: FontAwesomeIcons.googlePlay,
                        label: 'Google Play',
                        sublabel: 'Disponível no',
                        gradient: widget.gradient,
                        onTap: widget.onPlayStoreTap!,
                      ),
                    ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _StoreButton extends StatefulWidget {
  final IconData icon;
  final String label;
  final String sublabel;
  final List<Color> gradient;
  final VoidCallback onTap;

  const _StoreButton({
    required this.icon,
    required this.label,
    required this.sublabel,
    required this.gradient,
    required this.onTap,
  });

  @override
  State<_StoreButton> createState() => _StoreButtonState();
}

class _StoreButtonState extends State<_StoreButton> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hovering = true),
      onExit: (_) => setState(() => _hovering = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          decoration: BoxDecoration(
            color: _hovering
                ? Colors.white.withAlpha(18)
                : Colors.white.withAlpha(8),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: _hovering
                  ? Colors.white.withAlpha(80)
                  : Colors.white.withAlpha(30),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(widget.icon, color: Colors.white, size: 20),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    widget.sublabel,
                    style: GoogleFonts.inter(
                      fontSize: 9,
                      color: Colors.white.withAlpha(160),
                      height: 1,
                    ),
                  ),
                  Text(
                    widget.label,
                    style: GoogleFonts.inter(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      height: 1.2,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
