// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interviews_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InterviewsState {

 InterviewsStatus get status; List<InterviewsModel> get interviews;
/// Create a copy of InterviewsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InterviewsStateCopyWith<InterviewsState> get copyWith => _$InterviewsStateCopyWithImpl<InterviewsState>(this as InterviewsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InterviewsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.interviews, interviews));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(interviews));

@override
String toString() {
  return 'InterviewsState(status: $status, interviews: $interviews)';
}


}

/// @nodoc
abstract mixin class $InterviewsStateCopyWith<$Res>  {
  factory $InterviewsStateCopyWith(InterviewsState value, $Res Function(InterviewsState) _then) = _$InterviewsStateCopyWithImpl;
@useResult
$Res call({
 InterviewsStatus status, List<InterviewsModel> interviews
});




}
/// @nodoc
class _$InterviewsStateCopyWithImpl<$Res>
    implements $InterviewsStateCopyWith<$Res> {
  _$InterviewsStateCopyWithImpl(this._self, this._then);

  final InterviewsState _self;
  final $Res Function(InterviewsState) _then;

/// Create a copy of InterviewsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? interviews = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as InterviewsStatus,interviews: null == interviews ? _self.interviews : interviews // ignore: cast_nullable_to_non_nullable
as List<InterviewsModel>,
  ));
}

}


/// @nodoc


class _InterviewsState implements InterviewsState {
  const _InterviewsState({required this.status, required final  List<InterviewsModel> interviews}): _interviews = interviews;
  

@override final  InterviewsStatus status;
 final  List<InterviewsModel> _interviews;
@override List<InterviewsModel> get interviews {
  if (_interviews is EqualUnmodifiableListView) return _interviews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_interviews);
}


/// Create a copy of InterviewsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InterviewsStateCopyWith<_InterviewsState> get copyWith => __$InterviewsStateCopyWithImpl<_InterviewsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InterviewsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._interviews, _interviews));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_interviews));

@override
String toString() {
  return 'InterviewsState(status: $status, interviews: $interviews)';
}


}

/// @nodoc
abstract mixin class _$InterviewsStateCopyWith<$Res> implements $InterviewsStateCopyWith<$Res> {
  factory _$InterviewsStateCopyWith(_InterviewsState value, $Res Function(_InterviewsState) _then) = __$InterviewsStateCopyWithImpl;
@override @useResult
$Res call({
 InterviewsStatus status, List<InterviewsModel> interviews
});




}
/// @nodoc
class __$InterviewsStateCopyWithImpl<$Res>
    implements _$InterviewsStateCopyWith<$Res> {
  __$InterviewsStateCopyWithImpl(this._self, this._then);

  final _InterviewsState _self;
  final $Res Function(_InterviewsState) _then;

/// Create a copy of InterviewsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? interviews = null,}) {
  return _then(_InterviewsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as InterviewsStatus,interviews: null == interviews ? _self._interviews : interviews // ignore: cast_nullable_to_non_nullable
as List<InterviewsModel>,
  ));
}


}

// dart format on
