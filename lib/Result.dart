class Result<T> {
  Result._();

  factory Result.success(T t) = ResultSuccess<T>;

  factory Result.error(T exception) = ResultError<T>;
}

class GenericError<T> extends ResultError<T> {
  GenericError(super.exception);
}

class ResultError<T> extends Result<T> {
  final T exception;

  ResultError(this.exception) : super._();
}

class ResultSuccess<T> extends Result<T> {
  final T value;

  ResultSuccess(this.value) : super._();
}