// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i8;
import 'package:flutter_shop/app/core/utils/injection_container.dart' as _i12;
import 'package:flutter_shop/data/datasources/flutter_shop_api_datasource.dart'
    as _i9;
import 'package:flutter_shop/domain/repositories/login_repository.dart' as _i4;
import 'package:flutter_shop/domain/repositories/settings_repository.dart'
    as _i10;
import 'package:flutter_shop/features/auth/cubit/auth_cubit.dart' as _i7;
import 'package:flutter_shop/features/home/cubit/home_cubit.dart' as _i3;
import 'package:flutter_shop/features/product/cubit/product_cubit.dart' as _i5;
import 'package:flutter_shop/features/profile/cubit/profile_page_cubit.dart'
    as _i6;
import 'package:flutter_shop/features/settings/cubit/settings_cubit.dart'
    as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.HomeCubit>(() => _i3.HomeCubit());
    gh.factory<_i4.LoginRepository>(() => _i4.LoginRepository());
    gh.factory<_i5.ProductCubit>(() => _i5.ProductCubit());
    gh.factory<_i6.ProfilePageCubit>(() => _i6.ProfilePageCubit());
    gh.factory<String>(
      () => registerModule.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.factory<_i7.AuthCubit>(() => _i7.AuthCubit(gh<_i4.LoginRepository>()));
    gh.factory<_i8.Dio>(
        () => registerModule.dio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i9.FlutterShopApiDatasource>(
        () => _i9.FlutterShopApiDatasource(gh<_i8.Dio>()));
    gh.factory<_i10.SettingsRepository>(
        () => _i10.SettingsRepository(gh<_i9.FlutterShopApiDatasource>()));
    gh.factory<_i11.SettingsCubit>(
        () => _i11.SettingsCubit(gh<_i10.SettingsRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i12.RegisterModule {}
