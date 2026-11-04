import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:ec_card_app/src/data/core/api/api_endpoints.dart';
import 'package:ec_card_app/src/domain/loading_status/loading_status_repo.dart';
import 'package:ec_card_app/src/data/loading_status/model/user_profile/user_profile.dart';
import 'package:ec_card_app/src/injection.dart';
import 'package:ec_card_app/src/localization/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../domain/profile/profile_api_service.dart';
import '../domain/profile/profile_repo.dart';
import 'core/res/app_colors.dart';
import 'loading_status/loading_status_page.dart';
import 'utils/extension.dart';
import 'package:ec_card_app/src/data/core/logging/app_log.dart';

class ProfileQuestionsScreen extends StatefulWidget {
  final bool showBackButton;

  const ProfileQuestionsScreen({super.key, this.showBackButton = true});

  @override
  _ProfileQuestionsScreenState createState() => _ProfileQuestionsScreenState();
}

class _ProfileQuestionsScreenState extends State<ProfileQuestionsScreen> {
  final loadingStatusRepository = getIt<LoadingStatusRepository>();
  UserProfileData? userProfileData;
  bool isLoading = true;
  bool _isSubmitting = false;
  bool _submitAttempted = false;
  String errorMessage = '';
  final _formKey = GlobalKey<FormState>();
  
  // Variables to hold user's answers
  final Map<String, String?> _selectedSingleAnswers = {};
  final Map<String, List<String>> _selectedMultiAnswers = {};

  @override
  void initState() {
    super.initState();
    _loadProfileData();
  }

  /// [Zero-Knowledge Explanation]
  /// Yeh function screen khulte hi backend se questions ki list mangwata hai.
  /// (Form hardcoded nahi hai, server decide karta hai kya poochna hai).
  Future<void> _loadProfileData() async {
    final result = await loadingStatusRepository.getUserProfileData(
        isConnectedToInternet: true);
    if (!mounted) return;
    result.fold(
      (error) => setState(() {
        errorMessage = 'failed_to_load_profile';
        isLoading = false;
      }),
      (data) => setState(() {
        userProfileData = data;
        isLoading = false;
      }),
    );
  }

  /// [Zero-Knowledge Explanation]
  /// Yeh function "Submit" button dabane par chalta hai. 
  /// Yeh check karta hai ki user ne saare required sawalo ke jawab diye ya nahi, aur phir answers server ko bhejta hai.
  ///
  /// [Change Effect]
  /// Yahan `_formKey.currentState!.validate()` form ke single-select ko check karta hai.
  /// Phir `missingRequiredMultiSelect` alag se multi-select ko check karta hai.
  /// Agar tum yeh `missingRequiredMultiSelect` wala `if` hata do, toh user bina Multi-Select required question bhare submit kar dega, aur server error dega.
  void _submitAnswers() async {
    setState(() => _submitAttempted = true);

    if (!_formKey.currentState!.validate()) {
      appLog("Form validation failed.");
      return;
    }

    if (userProfileData == null) {
      appLog("Error: No profile data available.");
      return;
    }

    // Checking if any REQUIRED multi-select question is empty
    final missingRequiredMultiSelect = userProfileData!.questions.list.any(
      (question) =>
          question.choiceType == "multi_select" &&
          question.required &&
          (_selectedMultiAnswers[question.type]?.isEmpty ?? true),
    );
    if (missingRequiredMultiSelect) {
      appLog("Required multi-select question left unanswered.");
      return;
    }

    setState(() {
      _isSubmitting = true; 
    });

    // Formatting answers for backend JSON format
    final List answers = userProfileData!.questions.list
        .map((question) {
          if (question.choiceType == "single_select") {
            return {
              "type": question.type,
              "options": _selectedSingleAnswers[question.type] != null
                  ? [_selectedSingleAnswers[question.type]!]
                  : []
            };
          } else if (question.choiceType == "multi_select") {
            return {
              "type": question.type,
              "options": _selectedMultiAnswers[question.type] ?? []
            };
          }
          return {};
        })
        .where((answer) => answer.isNotEmpty)
        .toList();

    if (answers.isEmpty) {
      appLog("Error: No answers to submit.");
      setState(() {
        _isSubmitting = false;
      });
      return;
    }

    final profileAPIService = ProfileAPIService();
    final profileRepository =
        ProfileRepository(profileAPIService: profileAPIService);

    appLog(
        "base url: ${APIEndpoints.BASE_URL}${APIEndpoints.USER_PROFILE_URL}");

    try {
      final result = await profileRepository.submitProfileAnswers(answers);
      if (!mounted) return;

      setState(() {
        _isSubmitting = false; 
      });

      result.fold(
        (error) {
          appLog("Error: ${error.toString()}");
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(AppLocalizations.of(context)!
                  .submission_failed(error.getMessage(context))),
              backgroundColor: Colors.red,
            ),
          );
        },
        (message) async {
          appLog("Profile completion status saved successfully.");
          if (context.mounted) {
            _showDashBoard();
          }
        },
      );
    } catch (e) {
      appLog("Unexpected error: $e");
      if (!mounted) return;
      setState(() {
        _isSubmitting = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalizations.of(context)!.unexpectedError),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  /// [Zero-Knowledge Explanation]
  /// Submit hone ke baad, hum user ko directly dashboard nahi bhejte.
  /// Hum use wapas `LoadingStatusPage` (Gatekeeper) ke paas bhejte hain, taaki Gatekeeper check kare ki ab isse Quiz dikhana hai ya Video.
  void _showDashBoard() {
    Navigator.pushAndRemoveUntil(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 500),
          reverseTransitionDuration: const Duration(milliseconds: 500),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SharedAxisTransition(
              transitionType: SharedAxisTransitionType.horizontal,
              secondaryAnimation: secondaryAnimation,
              animation: animation,
              child: child,
            );
          },
          pageBuilder: (context, animation, secondaryAnimation) {
            return const LoadingStatusPage(skipProfileCheck: true);
          },
        ),
        (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0.5,
        shadowColor: primaryCyan,
        centerTitle: true,
        title: Text(
            AppLocalizations.of(context)!.additional_registration_questions),
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
              color: primaryCyan,
            ))
          : errorMessage.isNotEmpty
              ? Center(
                  child: Text(
                      AppLocalizations.of(context)!.failed_to_load_profile,
                      style: const TextStyle(color: Colors.red, fontSize: 16)))
              : userProfileData != null && userProfileData!.questions.show
                  ? SingleChildScrollView(
                      padding: const EdgeInsets.all(16),
                      child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                          children: [
                            _buildQuestionList(),
                            const SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: _isSubmitting
                                  ? null
                                  : _submitAnswers,
                              style: ElevatedButton.styleFrom(
                                minimumSize: const Size.fromHeight(50),
                                backgroundColor: primaryCyan,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                              child: _isSubmitting
                                  ? const SizedBox(
                                      width: 24,
                                      height: 24,
                                      child: CircularProgressIndicator(
                                          color: Colors.white, strokeWidth: 2),
                                    )
                                  : Text(AppLocalizations.of(context)!.submit,
                                      style: const TextStyle(
                                          fontSize: 18, color: Colors.white)),
                            ),
                          ],
                        ),
                      ),
                    )
                  : Center(
                      child: Text(
                          AppLocalizations.of(context)!.no_questions_available,
                          style: const TextStyle(fontSize: 16))),
    );
  }

  Widget _buildQuestionList() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: userProfileData!.questions.list.length,
      itemBuilder: (context, index) {
        final question = userProfileData!.questions.list[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (question.choiceType == "single_select")
                _buildSingleSelectDropdown(context, question)
              else
                _buildMultiSelectDropdown(question),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSingleSelectDropdown(BuildContext context, Question question) {
    return DropdownButtonFormField<String>(
      initialValue: _selectedSingleAnswers[question.type] == ''
          ? null
          : _selectedSingleAnswers[question.type],
      isExpanded: true,
      hint: Text(
        AppLocalizations.of(context)!.select_option,
        style: TextStyle(
          fontSize: 14,
          color: Colors.grey[400],
          fontWeight: FontWeight.normal,
        ),
        overflow: TextOverflow.ellipsis,
      ),
      items: [
        DropdownMenuItem(
          value: '',
          enabled: false,
          child: Text(
            AppLocalizations.of(context)!.select_option,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontSize: 14,
                  color: primaryBackgroundColor,
                ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        ...question.options
            .map(
              (option) => DropdownMenuItem(
                value: option,
                child: Text(
                  option,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 14,
                        color: primaryBackgroundColor,
                        fontWeight: FontWeight.bold,
                      ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            )
            .toList(),
      ],
      onChanged: (value) {
        setState(() => _selectedSingleAnswers[question.type] = value ?? '');
      },
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
        labelText: question.required ? '${question.title} *' : question.title,
        labelStyle: TextStyle(color: primaryBackgroundColor),
        fillColor: primaryCyan,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: Colors.cyan, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: primaryCyan, width: 1),
        ),
        counterText: "",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: primaryCyan, width: 1),
        ),
      ),
      validator: (value) {
        if (question.required && (value == null || value.isEmpty)) {
          return AppLocalizations.of(context)!.please_select_option;
        }
        return null;
      },
    );
  }

  /// [Zero-Knowledge Explanation]
  /// Flutter ke normal Dropdown mein Checkboxes nahi hote (Multi-select nahi hota).
  /// Toh yahan ek custom "Fake Dropdown" banaya gaya hai. Jab is par click karte hain, toh ek Dialog(Popup) khulta hai jisme Checkboxes bhare hote hain.
  Widget _buildMultiSelectDropdown(Question question) {
    final selected = _selectedMultiAnswers[question.type] ?? [];
    final hasError =
        _submitAttempted && question.required && selected.isEmpty;

    return GestureDetector(
      onTap: () => _showMultiSelectDialog(question),
      child: InputDecorator(
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
          labelText:
              question.required ? '${question.title} *' : question.title,
          labelStyle: TextStyle(color: primaryBackgroundColor),
          errorText: hasError
              ? AppLocalizations.of(context)!.please_select_at_least_one
              : null,
          counterText: "",
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.cyan, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: primaryCyan, width: 1),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: primaryCyan, width: 1),
          ),
        ),
        isEmpty: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                selected.isNotEmpty
                    ? selected.join(', ')
                    : AppLocalizations.of(context)!.select_options,
                style: TextStyle(
                  fontSize: 14,
                  color: selected.isNotEmpty
                      ? primaryBackgroundColor
                      : Colors.grey[400],
                  fontWeight:
                      selected.isNotEmpty ? FontWeight.bold : FontWeight.normal,
                ),
                overflow: TextOverflow.ellipsis,
                softWrap: true,
              ),
            ),
            const Icon(Icons.arrow_drop_down, color: Colors.black54),
          ],
        ),
      ),
    );
  }

  /// [Zero-Knowledge Explanation]
  /// Yeh function wo popup dikhata hai jisme tum multiple options tick karte ho.
  /// 'tempSelectedValues' isliye banaya hai ki agar user cancel kare toh purani chuni hui cheezein wehsi ki wehsi rahein.
  void _showMultiSelectDialog(Question question) {
    List<String> selectedValues =
        List.from(_selectedMultiAnswers[question.type] ?? []);
    final tempSelectedValues =
        List<String>.from(selectedValues); 

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Text(
                    question.title,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.cyan,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Flexible(
                  child: SingleChildScrollView(
                    child: ListBody(
                      children: question.options.map((option) {
                        return CheckboxListTile(
                          contentPadding: EdgeInsets.zero,
                          title: Text(
                            option,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: 14,
                                  color: primaryBackgroundColor,
                                ),
                          ),
                          value: tempSelectedValues.contains(option),
                          onChanged: (bool? checked) {
                            if (checked == true) {
                              tempSelectedValues.add(option);
                            } else {
                              tempSelectedValues.remove(option);
                            }
                            (context as Element)
                                .markNeedsBuild(); // Trigger rebuild for dialog
                          },
                        );
                      }).toList(),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text(AppLocalizations.of(context)!.cancel),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _selectedMultiAnswers[question.type] =
                              tempSelectedValues;
                        });
                        Navigator.pop(context);
                      },
                      child: Text(AppLocalizations.of(context)!.ok),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}