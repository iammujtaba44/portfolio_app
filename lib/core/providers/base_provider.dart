import 'package:flutter/material.dart';

enum BaseProviderStateType { initial, loading, loaded, error, empty }

abstract class BaseProvider extends ChangeNotifier {
  bool _isDisposed = false;

  @override
  dispose() {
    _isDisposed = true;
    super.dispose();
  }

  /// [State] Initialization
  BaseProviderState _state = const BaseProviderState.initial();

  ///[Getters]
  BaseProviderState get state => _state;

  ///[Setters]
  void setState(BaseProviderState state, {bool notify = true}) {
    if (_isDisposed) {
      return;
    }
    _state = state;
    if (notify) {
      notifyListeners();
    }
  }

  /// TODO(Mujtaba): Add other common functionalities that you might need across providers here
}

class BaseProviderState<T> {
  final BaseProviderStateType type;
  final T? data;
  final String? error;

  const BaseProviderState.initial()
      : type = BaseProviderStateType.initial,
        data = null,
        error = null;

  const BaseProviderState.loading()
      : type = BaseProviderStateType.loading,
        data = null,
        error = null;

  const BaseProviderState.loaded({this.data})
      : type = BaseProviderStateType.loaded,
        error = null;

  const BaseProviderState.error({this.error})
      : type = BaseProviderStateType.error,
        data = null;

  const BaseProviderState.empty()
      : type = BaseProviderStateType.empty,
        data = null,
        error = null;

  bool get isLoading => type == BaseProviderStateType.loading;
  bool get isLoaded => type == BaseProviderStateType.loaded;
  bool get isError => type == BaseProviderStateType.error;
  bool get isEmpty => type == BaseProviderStateType.empty;
  bool get isInitial => type == BaseProviderStateType.initial;
}
