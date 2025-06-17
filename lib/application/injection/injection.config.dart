// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:thou_art_i/api/database/datasource/group_database_data_source.dart'
    as _i744;
import 'package:thou_art_i/api/database/datasource/item_database_data_source.dart'
    as _i789;
import 'package:thou_art_i/api/database/manager/app_database.dart' as _i1057;
import 'package:thou_art_i/api/database/module.dart' as _i426;
import 'package:thou_art_i/api/repository/group_repository.dart' as _i998;
import 'package:thou_art_i/api/repository/item_repository.dart' as _i199;
import 'package:thou_art_i/application/router/configuration/thou_art_i_configuration_module.dart'
    as _i508;
import 'package:thou_art_i/application/router/configuration/thou_art_i_configuration_route.dart'
    as _i209;
import 'package:thou_art_i/presentation/content/cubit/content_cubit.dart'
    as _i992;
import 'package:thou_art_i/presentation/content/interactor/content_interactor.dart'
    as _i449;
import 'package:thou_art_i/presentation/sheet/cubit/sheet_cubit.dart' as _i895;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final thouArtIConfigurationModule = _$ThouArtIConfigurationModule();
    final databaseModule = _$DatabaseModule();
    gh.factory<_i895.SheetCubit>(() => _i895.SheetCubit());
    gh.singleton<_i209.ThouArtIConfiguration>(
        () => thouArtIConfigurationModule.configuration());
    gh.lazySingleton<_i1057.AppDatabase>(() => databaseModule.appDatabase);
    gh.lazySingleton<_i789.ItemDatabaseDataSource>(
        () => databaseModule.itemDatabaseDataSource(gh<_i1057.AppDatabase>()));
    gh.lazySingleton<_i744.GroupDatabaseDataSource>(
        () => databaseModule.groupDatabaseDataSource(gh<_i1057.AppDatabase>()));
    gh.factory<_i998.GroupRepository>(
        () => _i998.GroupRepositoryImpl(gh<_i744.GroupDatabaseDataSource>()));
    gh.factory<_i199.ItemRepository>(
        () => _i199.ItemRepositoryImpl(gh<_i789.ItemDatabaseDataSource>()));
    gh.factory<_i449.ContentInteractor>(() => _i449.ContentInteractorImpl(
          gh<_i199.ItemRepository>(),
          gh<_i998.GroupRepository>(),
        ));
    gh.factory<_i992.ContentCubit>(
        () => _i992.ContentCubit(gh<_i449.ContentInteractor>()));
    return this;
  }
}

class _$ThouArtIConfigurationModule extends _i508.ThouArtIConfigurationModule {}

class _$DatabaseModule extends _i426.DatabaseModule {}
