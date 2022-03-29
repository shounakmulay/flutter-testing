import 'package:flutter/material.dart';
import 'package:flutter_testing/domain/entity/base/result/result.dart';
import 'package:flutter_testing/presentation/entity/base/ui_result.dart';

abstract class BaseInteractor {
  @protected
  UIResult<T> mapResult<T>(Result<T> result) {
    return result.when(
      success: (data) => UIResult.success(data),
      error: (error) => UIResult.error(error),
    );
  }
}
