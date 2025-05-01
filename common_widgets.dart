import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class CommonWidgets {
  // Loading Indicator
  static Widget loadingIndicator() {
    return const Center(
      child: CircularProgressIndicator(
        color: AppTheme.primary,
      ),
    );
  }

  // Error Widget
  static Widget errorWidget({
    required String message,
    VoidCallback? onRetry,
  }) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            size: 48,
            color: AppTheme.error,
          ),
          const SizedBox(height: AppTheme.spacingM),
          Text(
            message,
            style: AppTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          if (onRetry != null) ...[
            const SizedBox(height: AppTheme.spacingM),
            ElevatedButton(
              onPressed: onRetry,
              child: const Text('Retry'),
            ),
          ],
        ],
      ),
    );
  }

  // Custom App Bar
  static AppBar customAppBar({
    required String title,
    List<Widget>? actions,
    bool showBackButton = true,
  }) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      automaticallyImplyLeading: showBackButton,
      actions: actions,
    );
  }

  // Custom Text Field
  static Widget customTextField({
    required String label,
    required TextEditingController controller,
    String? hint,
    bool obscureText = false,
    TextInputType? keyboardType,
    String? Function(String?)? validator,
    Widget? prefixIcon,
    Widget? suffixIcon,
    int? maxLines = 1,
    int? maxLength,
  }) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      maxLines: maxLines,
      maxLength: maxLength,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
      validator: validator,
    );
  }

  // Custom Button
  static Widget customButton({
    required String text,
    required VoidCallback onPressed,
    bool isLoading = false,
    bool isOutlined = false,
    Color? backgroundColor,
    IconData? icon,
  }) {
    final Widget buttonChild = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (icon != null) ...[
          Icon(icon),
          const SizedBox(width: AppTheme.spacingS),
        ],
        if (isLoading)
          const SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(
              color: Colors.white,
              strokeWidth: 2,
            ),
          )
        else
          Text(text),
      ],
    );

    return isOutlined
        ? OutlinedButton(
            onPressed: isLoading ? null : onPressed,
            child: buttonChild,
          )
        : ElevatedButton(
            onPressed: isLoading ? null : onPressed,
            style: backgroundColor != null
                ? ElevatedButton.styleFrom(
                    backgroundColor: backgroundColor,
                  )
                : null,
            child: buttonChild,
          );
  }

  // Rating Bar
  static Widget ratingBar({
    required double rating,
    double size = 20,
    bool isEditable = false,
    Function(double)? onRatingUpdate,
  }) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return GestureDetector(
          onTap: isEditable
              ? () => onRatingUpdate?.call((index + 1).toDouble())
              : null,
          child: Icon(
            index < rating.floor()
                ? Icons.star
                : index < rating
                    ? Icons.star_half
                    : Icons.star_border,
            color: Colors.amber,
            size: size,
          ),
        );
      }),
    );
  }

  // Price Tag
  static Widget priceTag({
    required double price,
    String? perUnit,
    bool isLarge = false,
  }) {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(NavigationToolbar.context).style,
        children: [
          TextSpan(
            text: 'Rp ${price.toStringAsFixed(0)}',
            style: isLarge ? AppTheme.headingMedium : AppTheme.bodyLarge.copyWith(
              color: AppTheme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          if (perUnit != null)
            TextSpan(
              text: '/$perUnit',
              style: isLarge ? AppTheme.bodyLarge : AppTheme.bodySmall.copyWith(
                color: Colors.grey[600],
              ),
            ),
        ],
      ),
    );
  }

  // Facility Chip
  static Widget facilityChip({
    required String text,
    IconData? icon,
    bool isSelected = false,
    VoidCallback? onTap,
  }) {
    return FilterChip(
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(
              icon,
              size: 16,
              color: isSelected ? Colors.white : AppTheme.primary,
            ),
            const SizedBox(width: AppTheme.spacingXS),
          ],
          Text(text),
        ],
      ),
      selected: isSelected,
      onSelected: onTap != null ? (_) => onTap() : null,
    );
  }

  // Empty State
  static Widget emptyState({
    required String message,
    IconData? icon,
    VoidCallback? onActionPressed,
    String? actionLabel,
  }) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon ?? Icons.hourglass_empty,
            size: 64,
            color: Colors.grey[400],
          ),
          const SizedBox(height: AppTheme.spacingM),
          Text(
            message,
            style: AppTheme.bodyMedium.copyWith(
              color: Colors.grey[600],
            ),
            textAlign: TextAlign.center,
          ),
          if (onActionPressed != null && actionLabel != null) ...[
            const SizedBox(height: AppTheme.spacingM),
            ElevatedButton(
              onPressed: onActionPressed,
              child: Text(actionLabel),
            ),
          ],
        ],
      ),
    );
  }

  // Custom Card
  static Widget customCard({
    required Widget child,
    EdgeInsetsGeometry? padding,
    VoidCallback? onTap,
    Color? color,
  }) {
    return Card(
      color: color,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppTheme.radiusM),
        child: Padding(
          padding: padding ?? const EdgeInsets.all(AppTheme.spacingM),
          child: child,
        ),
      ),
    );
  }

  // Section Header
  static Widget sectionHeader({
    required String title,
    String? subtitle,
    VoidCallback? onActionPressed,
    String? actionLabel,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppTheme.spacingM,
        vertical: AppTheme.spacingS,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTheme.headingSmall,
              ),
              if (subtitle != null)
                Text(
                  subtitle,
                  style: AppTheme.bodySmall.copyWith(
                    color: Colors.grey[600],
                  ),
                ),
            ],
          ),
          if (onActionPressed != null && actionLabel != null)
            TextButton(
              onPressed: onActionPressed,
              child: Text(actionLabel),
            ),
        ],
      ),
    );
  }

  // Custom Divider
  static Widget customDivider({
    double height = 1,
    Color? color,
    double indent = 0,
    double endIndent = 0,
  }) {
    return Divider(
      height: height,
      color: color ?? Colors.grey[200],
      indent: indent,
      endIndent: endIndent,
    );
  }
}
