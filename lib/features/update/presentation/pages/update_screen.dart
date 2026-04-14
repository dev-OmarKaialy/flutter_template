import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/assets.dart';
import '../../../../core/services/dependencies.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/utils/request_status.dart';
import '../../../../core/widgets/main_button.dart';
import '../cubit/update_cubit/update_cubit.dart';

class UpdateScreen extends StatefulWidget {
  const UpdateScreen({super.key});

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> with TickerProviderStateMixin {
  late final AnimationController _dotsController;

  @override
  void initState() {
    super.initState();
    _dotsController = AnimationController(vsync: this, duration: const Duration(milliseconds: 900))
      ..repeat(reverse: true);
  }

  @override
  void dispose() {
    _dotsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppTheme.primaryColor,
              AppTheme.primaryColor.withOpacity(0.85),
              AppTheme.tertiaryColor.withOpacity(0.7),
            ],
            stops: const [0.0, 0.5, 1.0],
          ),
        ),
        child: Stack(
          children: [
            // ── Decorative circles ──
            Positioned(
                  top: -0.15.sh,
                  right: -0.2.sw,
                  child: Container(
                    width: 0.6.sw,
                    height: 0.6.sw,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppTheme.onPrimaryColor.withOpacity(0.04),
                    ),
                  ),
                )
                .animate()
                .scale(
                  begin: const Offset(0.6, 0.6),
                  end: const Offset(1.0, 1.0),
                  duration: 1200.ms,
                  curve: Curves.easeOutCubic,
                )
                .fadeIn(duration: 800.ms),
            Positioned(
                  bottom: -0.1.sh,
                  left: -0.15.sw,
                  child: Container(
                    width: 0.5.sw,
                    height: 0.5.sw,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppTheme.secondaryColor.withOpacity(0.06),
                    ),
                  ),
                )
                .animate()
                .scale(
                  begin: const Offset(0.5, 0.5),
                  end: const Offset(1.0, 1.0),
                  duration: 1400.ms,
                  curve: Curves.easeOutCubic,
                )
                .fadeIn(duration: 800.ms, delay: 200.ms),

            // ── Main content ──
            SafeArea(
              child: Center(
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppTheme.spacingXXL.w,
                    vertical: AppTheme.spacingL.h,
                  ),
                  child: BlocBuilder<UpdateCubit, UpdateState>(
                    bloc: getIt<UpdateCubit>(),
                    builder: (context, state) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildHeader(),
                          SizedBox(height: AppTheme.spacingXXXL.h),
                          state.updateStatus.isLoading
                              ? _buildDownloadingCard(state)
                              : _buildUpdateCard(),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// ── Header: Logo + Title ──
  Widget _buildHeader() {
    return Column(
      children: [
        // Logo with glow
        Container(
              padding: const EdgeInsets.all(AppTheme.spacingXXL),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppTheme.onPrimaryColor.withOpacity(0.08),
                boxShadow: [
                  BoxShadow(
                    color: AppTheme.onPrimaryColor.withOpacity(0.05),
                    blurRadius: 40,
                    spreadRadius: 10,
                  ),
                ],
              ),
              child: Image.asset(Assets.assetsIconsLauncherIcon, width: 0.2.sw, height: 0.2.sw),
            )
            .animate()
            .scale(
              begin: const Offset(0.5, 0.5),
              end: const Offset(1.0, 1.0),
              duration: 800.ms,
              curve: Curves.easeOutBack,
            )
            .fadeIn(duration: 600.ms)
            .shimmer(
              delay: 600.ms,
              duration: 800.ms,
              angle: 150,
              color: AppTheme.secondaryColor.withOpacity(0.3),
            ),

        SizedBox(height: AppTheme.spacingXXL.h),

        // Title
        Text(
              'تحديث التطبيق',
              style: TextStyle(
                fontSize: 22.sp,
                fontWeight: FontWeight.w700,
                color: AppTheme.onPrimaryColor,
                letterSpacing: 0.5,
              ),
            )
            .animate()
            .fadeIn(delay: 400.ms, duration: 600.ms)
            .slideY(
              begin: 0.3,
              end: 0,
              delay: 400.ms,
              duration: 600.ms,
              curve: Curves.easeOutCubic,
            ),
      ],
    );
  }

  /// ── Initial state: "New update available" card ──
  Widget _buildUpdateCard() {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Accent strip
            Container(
              height: AppTheme.radiusXXL,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(AppTheme.radiusXXL)),
                gradient: LinearGradient(colors: [AppTheme.secondaryColor, AppTheme.tertiaryColor]),
              ),
            ),

            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(AppTheme.radiusXXL)),
              ),
              padding: EdgeInsets.all(AppTheme.spacingXXL.w),
              child: Column(
                children: [
                  SizedBox(height: AppTheme.spacingS.h),

                  // Update icon in themed container
                  Container(
                        width: 72.w,
                        height: 72.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              AppTheme.primaryColor.withOpacity(0.12),
                              AppTheme.tertiaryColor.withOpacity(0.08),
                            ],
                          ),
                        ),
                        child: Icon(
                          Icons.system_update_alt_rounded,
                          size: 36.sp,
                          color: AppTheme.primaryColor,
                        ),
                      )
                      .animate()
                      .scale(
                        begin: const Offset(0.0, 0.0),
                        end: const Offset(1.0, 1.0),
                        delay: 600.ms,
                        duration: 500.ms,
                        curve: Curves.elasticOut,
                      )
                      .fadeIn(delay: 600.ms, duration: 300.ms),

                  SizedBox(height: AppTheme.spacingXL.h),

                  // Title
                  Text(
                        'يوجد تحديث جديد!',
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                          color: AppTheme.primaryColor,
                        ),
                        textAlign: TextAlign.center,
                      )
                      .animate()
                      .fadeIn(delay: 750.ms, duration: 500.ms)
                      .slideY(
                        begin: 0.2,
                        end: 0,
                        delay: 750.ms,
                        duration: 500.ms,
                        curve: Curves.easeOutCubic,
                      ),

                  SizedBox(height: AppTheme.spacingS.h),

                  // Description
                  Text(
                    'قم بتحميل النسخة الأحدث لتفعيل التطبيق والاستفادة من آخر التحسينات.',
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w400,
                      color: AppTheme.onSurfaceColor.withOpacity(0.6),
                      height: 1.6,
                    ),
                    textAlign: TextAlign.center,
                  ).animate().fadeIn(delay: 900.ms, duration: 500.ms),

                  SizedBox(height: AppTheme.spacingXXXL.h),

                  // Download button
                  MainButton(
                        text: 'تحميل التحديث',
                        width: double.infinity,
                        icon: Icon(
                          Icons.download_rounded,
                          color: AppTheme.onPrimaryColor,
                          size: 20.sp,
                        ),
                        onPressed: () {
                          getIt<UpdateCubit>().downloadApp();
                        },
                      )
                      .animate()
                      .fadeIn(delay: 1050.ms, duration: 500.ms)
                      .slideY(
                        begin: 0.3,
                        end: 0,
                        delay: 1050.ms,
                        duration: 500.ms,
                        curve: Curves.easeOutCubic,
                      ),
                ],
              ),
            ),
          ],
        )
        .animate()
        .fadeIn(delay: 500.ms, duration: 600.ms)
        .slideY(begin: 0.15, end: 0, delay: 500.ms, duration: 600.ms, curve: Curves.easeOutCubic);
  }

  /// ── Downloading state card ──
  Widget _buildDownloadingCard(UpdateState state) {
    return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppTheme.radiusXXL),
            color: AppTheme.surfaceColor,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.12),
                blurRadius: 24,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Accent strip
              Container(
                height: 4,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(AppTheme.radiusXXL)),
                  gradient: LinearGradient(colors: [AppTheme.tertiaryColor, AppTheme.primaryColor]),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(AppTheme.spacingXXL.w),
                child: Column(
                  children: [
                    SizedBox(height: AppTheme.spacingS.h),

                    // Download icon with pulse
                    Container(
                          width: 72.w,
                          height: 72.w,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,

                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                AppTheme.tertiaryColor.withOpacity(0.12),
                                AppTheme.primaryColor.withOpacity(0.08),
                              ],
                            ),
                          ),
                          child: Icon(
                            Icons.downloading_rounded,
                            size: 36.sp,
                            color: AppTheme.tertiaryColor,
                          ),
                        )
                        .animate(onPlay: (controller) => controller.repeat(reverse: true))
                        .scale(
                          begin: const Offset(1.0, 1.0),
                          end: const Offset(1.08, 1.08),
                          duration: 1200.ms,
                          curve: Curves.easeInOut,
                        ),

                    SizedBox(height: AppTheme.spacingXL.h),

                    // Title
                    Text(
                      'جاري تحميل التحديث',
                      style: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w700,
                        color: AppTheme.primaryColor,
                      ),
                      textAlign: TextAlign.center,
                    ),

                    SizedBox(height: AppTheme.spacingXXL.h),

                    // ── Progress bar ──
                    _buildProgressBar(state.progress),

                    SizedBox(height: AppTheme.spacingM.h),

                    // Percentage + label
                    _buildProgressLabel(state.progress),

                    SizedBox(height: AppTheme.spacingXXL.h),

                    // Animated dots
                    _buildAnimatedDots(),

                    SizedBox(height: AppTheme.spacingS.h),

                    // Hint text
                    Text(
                      'يرجى عدم إغلاق التطبيق أثناء التحديث',
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                        color: AppTheme.onSurfaceColor.withOpacity(0.45),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
        .animate()
        .fadeIn(duration: 400.ms)
        .scale(
          begin: const Offset(0.96, 0.96),
          end: const Offset(1.0, 1.0),
          duration: 400.ms,
          curve: Curves.easeOutCubic,
        );
  }

  /// ── Custom progress bar ──
  Widget _buildProgressBar(double progress) {
    return Container(
      height: 10.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppTheme.radiusS),
        color: AppTheme.primaryColor.withOpacity(0.08),
      ),
      child: Stack(
        children: [
          Container(),
          TweenAnimationBuilder<double>(
            tween: Tween<double>(begin: 0, end: progress),
            duration: const Duration(milliseconds: 400),
            curve: Curves.easeInOut,
            builder: (context, animatedProgress, child) {
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppTheme.primaryColor),
                  borderRadius: BorderRadius.circular(AppTheme.radiusS),
                ),
                width: double.infinity,
                child: FractionallySizedBox(
                  widthFactor: animatedProgress.clamp(0.0, 1.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppTheme.radiusS),
                      gradient: LinearGradient(
                        colors: [
                          AppTheme.primaryColor,
                          AppTheme.tertiaryColor,
                          AppTheme.secondaryColor.withAlpha(150),
                          AppTheme.secondaryColor,
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: AppTheme.tertiaryColor.withOpacity(0.4),
                          blurRadius: 6,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  /// ── Progress percentage label ──
  Widget _buildProgressLabel(double progress) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 0, end: progress * 100),
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
      builder: (context, percentage, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'التقدّم',
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: AppTheme.onSurfaceColor.withOpacity(0.5),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: AppTheme.spacingM.w,
                vertical: AppTheme.spacingXS.h,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppTheme.radiusXL),
                color: AppTheme.primaryColor.withOpacity(0.08),
              ),
              child: Text(
                '${percentage.toStringAsFixed(0)}%',
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w700,
                  color: AppTheme.primaryColor,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  /// ── Bouncing dots indicator ──
  Widget _buildAnimatedDots() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        final start = (index * 0.15).clamp(0.0, 1.0);
        final end = (start + 0.7).clamp(0.0, 1.0);
        final animation = CurvedAnimation(
          parent: _dotsController,
          curve: Interval(start, end, curve: Curves.easeInOut),
        );

        return AnimatedBuilder(
          animation: animation,
          builder: (context, child) {
            final translateY = -6.0 * animation.value;
            final opacity = 0.3 + (animation.value * 0.7);

            return Transform.translate(
              offset: Offset(0, translateY),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 3.w),
                width: 7.w,
                height: 7.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppTheme.tertiaryColor.withOpacity(opacity),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
