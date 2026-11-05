import 'package:dartz/dartz.dart';
import '../../data/loading_status/model/org_brand_info/org_brand_info.dart';
import '../../data/loading_status/model/user_dashboard/user_dashboard.dart';
import '../../data/loading_status/model/user_profile/user_profile.dart';
import '../core/errors/errors.dart';

abstract class LoadingStatusRepository {
  Future<Either<AppErrors, String>> checkQuizPassedStatus(
      {required bool isConnectedToInternet, bool skipProfileCheck = false});

  Future<Either<AppErrors, OrgBrandInfoData>> getBrandInfo();

  Future<Either<AppErrors, UserProfileData>> getUserProfileData(
      {required bool isConnectedToInternet});

  Future<Either<AppErrors, UserDashboardData>> getUserDashBoardData(
      {required bool isConnectedToInternet});

  Future<Either<AppErrors, String>> selfDeletionProcess();

  Future<Either<AppErrors, String>> confirmSelfDeletion(String otp);
}