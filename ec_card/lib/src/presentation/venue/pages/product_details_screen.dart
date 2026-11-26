import 'package:ec_card_app/src/data/venue/model/entity/venue_products_entity.dart';
import 'package:ec_card_app/src/domain/scanner/scanner_api_service.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:ec_card_app/src/presentation/core/app.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../application/venue/venue_cubit.dart';
import '../../../injection.dart';
import '../../core/widgets/appbar.dart';
import '../../home/scanner/widgets/not_eligible.dart';
import 'product_confirmation_screen.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

class ProductDetailsScreen extends StatefulWidget {
  final ProductEntity product;
  const ProductDetailsScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  bool _isCheckingEligibility = false;

  Future<void> _onOrderNowPressed() async {
    final localizations = AppLocalizations.of(context)!;
    setState(() => _isCheckingEligibility = true);
    try {
      final scannerAPI = getIt<ScannerAPIService>();
      final eligibilityResponse = await scannerAPI.userEligibleTransactionAPI();
      if (!mounted) return;
      final data = eligibilityResponse.data['data'];
      appLog("Eligibility Response: ${eligibilityResponse.data}");
      final bool isEligible = data['isEligible'] == true;
      final bool isPending = data['pendingScreen'] == true;
      final String message =
          data['message'] ?? localizations.notEligibleToOrderNow;
      final nextClaimDate = data['nextClaimDate'] ?? '';
      final prevClaimDate = data['prevClaimDate'] ?? '';
      final transactionDetails = data['transactionDetails'] ?? {};

      if (!isEligible) {
        Navigator.pop(context);
        if (isPending == true) {
          ScaffoldMessenger.of(MyApp.navigatorKey.currentContext!).showSnackBar(
            SnackBar(content: Text(message), backgroundColor: Colors.orange),
          );
          return;
        } else {
          Navigator.push(
            context,
            PageRouteBuilder(
              transitionDuration: const Duration(milliseconds: 150),
              reverseTransitionDuration: const Duration(milliseconds: 10),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return ScaleTransition(
                  scale: animation,
                  child: child,
                );
              },
              pageBuilder: (context, animation, secondaryAnimation) {
                return NotEligibleScreen(
                  prevClaimDate: prevClaimDate,
                  nextClaimDate: nextClaimDate,
                  transactionDetails: transactionDetails,
                );
              },
            ),
          );
          return;
        }
      }
      final state = context.read<VenueCubit>().state;
      Navigator.pop(context);
      showOrderFormBottomSheet(
        context,
        phone: state.phoneNumber,
        postalCode: state.postalCode,
        product: widget.product,
      );
    } catch (e) {
      appLog("Eligibility check failed: $e");
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(localizations.something_went_wrong),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      if (mounted) setState(() => _isCheckingEligibility = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    final product = widget.product;
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        title: localizations.productDetails,
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.w),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.r),
                ),
                elevation: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(
                          16.w), // Add top, bottom, or horizontal as needed
                      child: Text(
                        product.name,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    const Divider(height: 2),
                    Padding(
                      padding: EdgeInsets.all(16.w),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.r),
                        child: Image.network(
                          product.image,
                          height: 240.h,
                          width: double.infinity,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(16.w),
                      child: Text(
                        localizations.productDescriptionLabel,
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 16.w, right: 16.w, bottom: 16.h),
                          child: Text(
                            product.description,
                            style: TextStyle(fontSize: 14.sp),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Divider line
          const Divider(height: 1),

          // Bottom Bar with Buttons
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: const BorderSide(width: 1, color: Colors.grey),
                      ),
                      backgroundColor: Colors.grey[200],
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      localizations.back,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(width: 20.w),
                Expanded(
                  child: ElevatedButton(
                    onPressed:
                        _isCheckingEligibility ? null : _onOrderNowPressed,
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: const BorderSide(width: 1, color: primaryCyan),
                      ),
                      backgroundColor: primaryCyan,
                    ),
                    child: _isCheckingEligibility
                        ? SizedBox(
                            height: 20.h,
                            width: 20.h,
                            child: const CircularProgressIndicator(
                              strokeWidth: 2,
                              color: Colors.white,
                            ),
                          )
                        : Text(localizations.orderNow),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void showOrderFormBottomSheet(
  BuildContext context, {
  required String? phone,
  required String? postalCode,
  required ProductEntity product,
}) {
  final formKey = GlobalKey<FormState>();
  final localizations = AppLocalizations.of(context)!;

  final streetController = TextEditingController();
  final address2Controller = TextEditingController();
  final cityController = TextEditingController();
  final postcodeController = TextEditingController(text: postalCode ?? '');
  final contactController = TextEditingController(text: phone ?? '');

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder: (context) {
      return StatefulBuilder(
        builder: (context, _) {
          return Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom + 24.h,
              left: 24,
              right: 24,
              top: 24,
            ),
            child: Form(
              key: formKey,
              child: Wrap(
                children: [
                  Center(
                    child: Text(
                      localizations.provideAddressAndContact,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 20),
                  _buildTextField(
                    localizations.streetRequired,
                    streetController,
                    true,
                    localizations.requiredField,
                  ),
                  _buildTextField(
                    localizations.addressLineTwo,
                    address2Controller,
                    false,
                    localizations.requiredField,
                  ),
                  _buildTextField(
                    localizations.townCityRequired,
                    cityController,
                    true,
                    localizations.requiredField,
                  ),
                  _buildTextField(
                    localizations.postcodeRequired,
                    postcodeController,
                    true,
                    localizations.requiredField,
                    keyboardType: TextInputType.text,
                    enabled: false,
                  ),
                  _buildTextField(
                    localizations.contactNoRequired,
                    contactController,
                    true,
                    localizations.requiredField,
                    keyboardType: TextInputType.phone,
                    enabled: false,
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (!formKey.currentState!.validate()) {
                          return;
                        }
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => ConfirmDeliveryScreen(
                              productName: product.name,
                              productImage: product.image,
                              productDescription: product.description,
                              productId: product.orgProductId,
                              venueName: localizations.onlineStore,
                              street: streetController.text.trim(),
                              address: address2Controller.text.trim(),
                              city: cityController.text.trim(),
                            ),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.cyan,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Text(localizations.continue_button),
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}

Widget _buildTextField(
  String label,
  TextEditingController controller,
  bool required,
  String requiredMessage, {
  TextInputType keyboardType = TextInputType.text,
  bool enabled = true,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 16),
    child: TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      autocorrect: false,
      enableSuggestions: false,
      enabled: enabled,
      validator: required
          ? (value) => (value == null || value.isEmpty) ? requiredMessage : null
          : null,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      ),
    ),
  );
}
