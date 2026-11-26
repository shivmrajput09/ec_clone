import 'package:custom_pop_up_menu/custom_pop_up_menu.dart';
import 'package:ec_card_app/src/data/scanner/model/product_model.dart';
import 'package:ec_card_app/src/presentation/core/res/app_colors.dart';
import 'package:ec_card_app/src/presentation/core/widgets/appbar.dart';
import 'package:ec_card_app/src/presentation/products_list/confirmed_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';

class ProductsListPage extends StatefulWidget {
  const ProductsListPage(
      {Key? key,
      required this.products,
      required this.venueDetails,
      required this.qrCode})
      : super(key: key);

  final List<ProductModel> products;
  final Map<String, dynamic> venueDetails;
  final String qrCode;

  @override
  State<ProductsListPage> createState() => _ProductsListPageState();
}

class _ProductsListPageState extends State<ProductsListPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  int? _selectedRadio; // Initially, no page is selected

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBar: AppBar(), title: AppLocalizations.of(context)!.selectProduct),
      body: Column(
        children: [
          //Venue Details
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.h),
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.white),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.venueDetails['name'],
                      style: Theme.of(context).textTheme.bodyLarge,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 10.h),
                    Text("${widget.venueDetails['address']}"),
                  ],
                ),
              ),
            ),
          ),
          // PageView widget with height 300 px and full screen width

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              height: 325.h,
              width: double.infinity,
              child: widget.products.isEmpty
                  ? Center(
                      child: Text(
                        AppLocalizations.of(context)!.noActiveProducts,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontSize: 16.sp, fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    )
                  : PageView(
                      controller: _pageController,
                      onPageChanged: (int index) {
                        setState(() {
                          _currentPage = index;
                        });
                      },
                      children: List.generate(widget.products.length, (index) {
                        return Card(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.r),
                              side: BorderSide(
                                color: _selectedRadio == index
                                    ? primaryColorLight
                                    : Colors.white,
                                width: _selectedRadio == index ? 1 : 0,
                              )),
                          child: Column(
                            children: [
                              // Radio button at the top
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  minVerticalPadding: 0,
                                  dense: true,
                                  leading: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _selectedRadio = index;
                                        });
                                      },
                                      icon: Container(
                                        height: 24,
                                        width: 24,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: _selectedRadio == index
                                                ? primaryColorLight
                                                : Colors.white,
                                            border: Border.all(
                                                width: 1,
                                                color: primaryColorLight)),
                                        child: _selectedRadio == index
                                            ? const Icon(
                                                Icons.check,
                                                size: 20,
                                                color: Colors.white,
                                              )
                                            : const SizedBox(),
                                      )),
                                  title: Text(widget.products[index].name,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.sp,
                                      )),
                                  trailing: Padding(
                                    padding: EdgeInsetsDirectional.only(end: 16.sp),
                                    child: CustomPopupMenu(
                                        arrowColor: Colors.white,
                                        arrowSize: 24.sp,
                                        child: Icon(
                                          Icons.info_outlined,
                                          color: Colors.grey.shade700,
                                        ),
                                        horizontalMargin: 20.w,
                                        verticalMargin: -10,
                                        menuBuilder: () {
                                          return ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10.r),
                                            child: ConstrainedBox(
                                              constraints: BoxConstraints(
                                                maxHeight: 300.h,
                                                minWidth:
                                                    double.infinity - 40.w,
                                              ),
                                              child: Container(
                                                  color: Colors.white,
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 16.w,
                                                            vertical: 12.h),
                                                    child:
                                                        SingleChildScrollView(
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            AppLocalizations.of(context)!.productDescription,
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodyLarge
                                                                ?.copyWith(
                                                                    fontSize:
                                                                        16.sp,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600),
                                                          ),
                                                          SizedBox(
                                                              height: 12.h),
                                                          Text(
                                                            widget
                                                                .products[index]
                                                                .description,
                                                            style:
                                                                const TextStyle(
                                                                    color: Colors
                                                                        .black),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  )),
                                            ),
                                          );
                                        },
                                        barrierColor:
                                            Colors.black.withOpacity(0.22),
                                        pressType: PressType.singleClick),
                                  ),
                                ),
                              ),

                              Divider(
                                height: 1,
                                color: Colors.grey.shade500,
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.all(16.sp),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16.r),
                                    child: Image.network(
                                      widget.products[index].image,
                                      fit: BoxFit.fitHeight,
                                      width: double.infinity,
                                      // height: 250.h,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
            ),
          ),
          // Page indicator at the bottom
          if (widget.products.isNotEmpty)
            Padding(
              padding: EdgeInsets.only(top: 6.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(widget.products.length, (index) {
                  return Container(
                    margin: const EdgeInsets.all(4),
                    width: 8.sp,
                    height: 8.sp,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentPage == index ? Colors.cyan : Colors.grey,
                    ),
                  );
                }),
              ),
            ),

          if (widget.products.isNotEmpty)
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
              child: Text(
                AppLocalizations.of(context)!.productSelectionWarning,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),

          const Spacer(),
        ],
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 80.h,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.grey,
              blurRadius: 4,
            ),
          ],
        ),
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceEvenly,
          buttonHeight: 60.h,
          mainAxisSize: MainAxisSize.max,
          children: [
            //close button
            ElevatedButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
                      const EdgeInsets.symmetric(horizontal: 40)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder?>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: BorderSide(width: 1, color: Colors.amber[900]!),
                  )),
                  backgroundColor:
                      MaterialStateProperty.all<Color?>(Colors.amber[900])),
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
              child: Text(
                AppLocalizations.of(context)!.cancel,
                style: const TextStyle(color: Colors.white),
              ),
            ),

            //submit button
            if (widget.products.isNotEmpty)
              ElevatedButton(
                onPressed: _selectedRadio == null
                    ? null
                    : () {
                        //Navigate to the confirmation page
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ConfirmedProductPage(
                                selectedProduct:
                                    widget.products[_selectedRadio ?? 0],
                                qrCode: widget.qrCode);
                          },
                        ));
                      },
                child: Text(
                  AppLocalizations.of(context)!.next,
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(fontSize: 18, color: Colors.white),
                ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
                      const EdgeInsets.symmetric(horizontal: 40)),
                  backgroundColor: MaterialStateProperty.all<Color?>(
                      _selectedRadio == null ? Colors.grey[300] : primaryCyan),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder?>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.r))),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
