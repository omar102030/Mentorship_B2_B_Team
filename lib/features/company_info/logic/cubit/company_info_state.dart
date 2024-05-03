import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_info_state.freezed.dart';

@freezed
class CompanyInfoState<T> with _$CompanyInfoState<T> {
  const factory CompanyInfoState.initial() = _Initial;
  const factory CompanyInfoState.loading() = CompanyInfoLoading;
  const factory CompanyInfoState.loaded(T data) = CompanyInfoLoaded<T>;
  const factory CompanyInfoState.error({required String message}) =
      CompanyInfoError;
}
