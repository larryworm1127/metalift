; ModuleID = 'spmv.ll'
source_filename = "spmv.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.list = type { %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { i32*, i32*, i32* }
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::new_allocator" = type { i8 }
%"class.__gnu_cxx::__normal_iterator" = type { i32* }
%"struct.std::integral_constant" = type { i8 }

$_Z7newListIiEP4listIT_Ev = comdat any

$_Z7listGetIiET_P4listIS0_Ei = comdat any

$_Z10listAppendIiEP4listIT_ES3_S1_ = comdat any

$_ZN4listIiEC2Ev = comdat any

$_ZNSt6vectorIiSaIiEEC2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEEC2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev = comdat any

$_ZNSaIiEC2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIiEC2Ev = comdat any

$_ZNSt6vectorIiSaIiEEixEm = comdat any

$_Z10listLengthIiEiP4listIT_E = comdat any

$_ZNSt6vectorIiSaIiEE9push_backEOi = comdat any

$_ZNSt6vectorIiSaIiEE9push_backERKi = comdat any

$_ZNKSt6vectorIiSaIiEE4sizeEv = comdat any

$_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_ = comdat any

$_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_ = comdat any

$_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_ = comdat any

$_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE = comdat any

$_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_ = comdat any

$_ZNSt6vectorIiSaIiEE3endEv = comdat any

$_ZNSt6vectorIiSaIiEE4backEv = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE9constructIiJiEEEvPT_DpOT0_ = comdat any

$_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_ = comdat any

$_ZNSt6vectorIiSaIiEE5beginEv = comdat any

$_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm = comdat any

$_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv = comdat any

$_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim = comdat any

$_ZNKSt6vectorIiSaIiEE8max_sizeEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_ = comdat any

$_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$__clang_call_terminate = comdat any

$_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_ = comdat any

$_ZNSt16allocator_traitsISaIiEE8allocateERS0_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv = comdat any

$_ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE = comdat any

$_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_ = comdat any

$_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E = comdat any

$_ZSt12__niter_baseIPiET_S1_ = comdat any

$_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEl = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv = comdat any

$_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_ = comdat any

$_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_ = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_ = comdat any

$_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: noinline optnone uwtable
define dso_local %struct.list* @test(i32 %arg, %struct.list* %arg1, %struct.list* %arg2, %struct.list* %arg3, %struct.list* %arg4) #0 {
bb:
  %i = alloca i32, align 4
  %i5 = alloca %struct.list*, align 8
  %i6 = alloca %struct.list*, align 8
  %i7 = alloca %struct.list*, align 8
  %i8 = alloca %struct.list*, align 8
  %i9 = alloca %struct.list*, align 8
  %i10 = alloca i32, align 4
  %i11 = alloca i32, align 4
  %i12 = alloca i32, align 4
  store i32 %arg, i32* %i, align 4
  store %struct.list* %arg1, %struct.list** %i5, align 8
  store %struct.list* %arg2, %struct.list** %i6, align 8
  store %struct.list* %arg3, %struct.list** %i7, align 8
  store %struct.list* %arg4, %struct.list** %i8, align 8
  %i13 = call %struct.list* @_Z7newListIiEP4listIT_Ev()
  store %struct.list* %i13, %struct.list** %i9, align 8
  store i32 0, i32* %i10, align 4
  br label %bb14

bb14:                                             ; preds = %bb48, %bb
  %i15 = load i32, i32* %i10, align 4
  %i16 = load i32, i32* %i, align 4
  %i17 = icmp slt i32 %i15, %i16
  br i1 %i17, label %bb18, label %bb51

bb18:                                             ; preds = %bb14
  store i32 0, i32* %i11, align 4
  %i19 = load %struct.list*, %struct.list** %i6, align 8
  %i20 = load i32, i32* %i10, align 4
  %i21 = call i32 @_Z7listGetIiET_P4listIS0_Ei(%struct.list* %i19, i32 %i20)
  store i32 %i21, i32* %i12, align 4
  br label %bb22

bb22:                                             ; preds = %bb41, %bb18
  %i23 = load i32, i32* %i12, align 4
  %i24 = load %struct.list*, %struct.list** %i6, align 8
  %i25 = load i32, i32* %i10, align 4
  %i26 = add nsw i32 %i25, 1
  %i27 = call i32 @_Z7listGetIiET_P4listIS0_Ei(%struct.list* %i24, i32 %i26)
  %i28 = icmp slt i32 %i23, %i27
  br i1 %i28, label %bb29, label %bb44

bb29:                                             ; preds = %bb22
  %i30 = load %struct.list*, %struct.list** %i5, align 8
  %i31 = load i32, i32* %i12, align 4
  %i32 = call i32 @_Z7listGetIiET_P4listIS0_Ei(%struct.list* %i30, i32 %i31)
  %i33 = load %struct.list*, %struct.list** %i8, align 8
  %i34 = load %struct.list*, %struct.list** %i7, align 8
  %i35 = load i32, i32* %i12, align 4
  %i36 = call i32 @_Z7listGetIiET_P4listIS0_Ei(%struct.list* %i34, i32 %i35)
  %i37 = call i32 @_Z7listGetIiET_P4listIS0_Ei(%struct.list* %i33, i32 %i36)
  %i38 = mul nsw i32 %i32, %i37
  %i39 = load i32, i32* %i11, align 4
  %i40 = add nsw i32 %i39, %i38
  store i32 %i40, i32* %i11, align 4
  br label %bb41

bb41:                                             ; preds = %bb29
  %i42 = load i32, i32* %i12, align 4
  %i43 = add nsw i32 %i42, 1
  store i32 %i43, i32* %i12, align 4
  br label %bb22

bb44:                                             ; preds = %bb22
  %i45 = load %struct.list*, %struct.list** %i9, align 8
  %i46 = load i32, i32* %i11, align 4
  %i47 = call %struct.list* @_Z10listAppendIiEP4listIT_ES3_S1_(%struct.list* %i45, i32 %i46)
  store %struct.list* %i47, %struct.list** %i9, align 8
  br label %bb48

bb48:                                             ; preds = %bb44
  %i49 = load i32, i32* %i10, align 4
  %i50 = add nsw i32 %i49, 1
  store i32 %i50, i32* %i10, align 4
  br label %bb14

bb51:                                             ; preds = %bb14
  %i52 = load %struct.list*, %struct.list** %i9, align 8
  ret %struct.list* %i52
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %struct.list* @_Z7newListIiEP4listIT_Ev() #0 comdat {
bb:
  %i = call noalias nonnull i8* @_Znwm(i64 24) #8
  %i1 = bitcast i8* %i to %struct.list*
  %i2 = bitcast %struct.list* %i1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %i2, i8 0, i64 24, i1 false)
  call void @_ZN4listIiEC2Ev(%struct.list* %i1) #9
  ret %struct.list* %i1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_Z7listGetIiET_P4listIS0_Ei(%struct.list* %arg, i32 %arg1) #1 comdat {
bb:
  %i = alloca %struct.list*, align 8
  %i2 = alloca i32, align 4
  store %struct.list* %arg, %struct.list** %i, align 8
  store i32 %arg1, i32* %i2, align 4
  %i3 = load %struct.list*, %struct.list** %i, align 8
  %i4 = getelementptr inbounds %struct.list, %struct.list* %i3, i32 0, i32 0
  %i5 = load i32, i32* %i2, align 4
  %i6 = sext i32 %i5 to i64
  %i7 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* %i4, i64 %i6) #9
  %i8 = load i32, i32* %i7, align 4
  ret i32 %i8
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local %struct.list* @_Z10listAppendIiEP4listIT_ES3_S1_(%struct.list* %arg, i32 %arg1) #0 comdat {
bb:
  %i = alloca %struct.list*, align 8
  %i2 = alloca i32, align 4
  %i3 = alloca %struct.list*, align 8
  %i4 = alloca i32, align 4
  %i5 = alloca i32, align 4
  store %struct.list* %arg, %struct.list** %i, align 8
  store i32 %arg1, i32* %i2, align 4
  %i6 = call %struct.list* @_Z7newListIiEP4listIT_Ev()
  store %struct.list* %i6, %struct.list** %i3, align 8
  store i32 0, i32* %i4, align 4
  br label %bb7

bb7:                                              ; preds = %bb18, %bb
  %i8 = load i32, i32* %i4, align 4
  %i9 = load %struct.list*, %struct.list** %i, align 8
  %i10 = call i32 @_Z10listLengthIiEiP4listIT_E(%struct.list* %i9)
  %i11 = icmp slt i32 %i8, %i10
  br i1 %i11, label %bb12, label %bb21

bb12:                                             ; preds = %bb7
  %i13 = load %struct.list*, %struct.list** %i3, align 8
  %i14 = getelementptr inbounds %struct.list, %struct.list* %i13, i32 0, i32 0
  %i15 = load %struct.list*, %struct.list** %i, align 8
  %i16 = load i32, i32* %i4, align 4
  %i17 = call i32 @_Z7listGetIiET_P4listIS0_Ei(%struct.list* %i15, i32 %i16)
  store i32 %i17, i32* %i5, align 4
  call void @_ZNSt6vectorIiSaIiEE9push_backEOi(%"class.std::vector"* %i14, i32* nonnull align 4 dereferenceable(4) %i5)
  br label %bb18

bb18:                                             ; preds = %bb12
  %i19 = load i32, i32* %i4, align 4
  %i20 = add nsw i32 %i19, 1
  store i32 %i20, i32* %i4, align 4
  br label %bb7

bb21:                                             ; preds = %bb7
  %i22 = load %struct.list*, %struct.list** %i3, align 8
  %i23 = getelementptr inbounds %struct.list, %struct.list* %i22, i32 0, i32 0
  call void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector"* %i23, i32* nonnull align 4 dereferenceable(4) %i2)
  %i24 = load %struct.list*, %struct.list** %i3, align 8
  ret %struct.list* %i24
}

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) #2

; Function Attrs: argmemonly nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN4listIiEC2Ev(%struct.list* %arg) unnamed_addr #1 comdat align 2 {
bb:
  %i = alloca %struct.list*, align 8
  store %struct.list* %arg, %struct.list** %i, align 8
  %i1 = load %struct.list*, %struct.list** %i, align 8
  %i2 = getelementptr inbounds %struct.list, %struct.list* %i1, i32 0, i32 0
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector"* %i2) #9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector"* %arg) unnamed_addr #1 comdat align 2 {
bb:
  %i = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %arg, %"class.std::vector"** %i, align 8
  %i1 = load %"class.std::vector"*, %"class.std::vector"** %i, align 8
  %i2 = bitcast %"class.std::vector"* %i1 to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(%"struct.std::_Vector_base"* %i2) #9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(%"struct.std::_Vector_base"* %arg) unnamed_addr #1 comdat align 2 {
bb:
  %i = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %arg, %"struct.std::_Vector_base"** %i, align 8
  %i1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %i, align 8
  %i2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %i1, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %i2) #9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %arg) unnamed_addr #1 comdat align 2 {
bb:
  %i = alloca %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"*, align 8
  store %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %arg, %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"** %i, align 8
  %i1 = load %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"*, %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"** %i, align 8
  %i2 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %i1 to %"class.std::allocator"*
  call void @_ZNSaIiEC2Ev(%"class.std::allocator"* %i2) #9
  %i3 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %i1 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %i3) #9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSaIiEC2Ev(%"class.std::allocator"* %arg) unnamed_addr #1 comdat align 2 {
bb:
  %i = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %arg, %"class.std::allocator"** %i, align 8
  %i1 = load %"class.std::allocator"*, %"class.std::allocator"** %i, align 8
  %i2 = bitcast %"class.std::allocator"* %i1 to %"class.__gnu_cxx::new_allocator"*
  call void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator"* %i2) #9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %arg) unnamed_addr #1 comdat align 2 {
bb:
  %i = alloca %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*, align 8
  store %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %arg, %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"** %i, align 8
  %i1 = load %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*, %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"** %i, align 8
  %i2 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %i1, i32 0, i32 0
  store i32* null, i32** %i2, align 8
  %i3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %i1, i32 0, i32 1
  store i32* null, i32** %i3, align 8
  %i4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %i1, i32 0, i32 2
  store i32* null, i32** %i4, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.__gnu_cxx::new_allocator"* %arg) unnamed_addr #1 comdat align 2 {
bb:
  %i = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %arg, %"class.__gnu_cxx::new_allocator"** %i, align 8
  %i1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %i, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* %arg, i64 %arg1) #1 comdat align 2 {
bb:
  %i = alloca %"class.std::vector"*, align 8
  %i2 = alloca i64, align 8
  store %"class.std::vector"* %arg, %"class.std::vector"** %i, align 8
  store i64 %arg1, i64* %i2, align 8
  %i3 = load %"class.std::vector"*, %"class.std::vector"** %i, align 8
  %i4 = bitcast %"class.std::vector"* %i3 to %"struct.std::_Vector_base"*
  %i5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %i4, i32 0, i32 0
  %i6 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %i5 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %i7 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %i6, i32 0, i32 0
  %i8 = load i32*, i32** %i7, align 8
  %i9 = load i64, i64* %i2, align 8
  %i10 = getelementptr inbounds i32, i32* %i8, i64 %i9
  ret i32* %i10
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_Z10listLengthIiEiP4listIT_E(%struct.list* %arg) #1 comdat {
bb:
  %i = alloca %struct.list*, align 8
  store %struct.list* %arg, %struct.list** %i, align 8
  %i1 = load %struct.list*, %struct.list** %i, align 8
  %i2 = getelementptr inbounds %struct.list, %struct.list* %i1, i32 0, i32 0
  %i3 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %i2) #9
  %i4 = trunc i64 %i3 to i32
  ret i32 %i4
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE9push_backEOi(%"class.std::vector"* %arg, i32* nonnull align 4 dereferenceable(4) %arg1) #0 comdat align 2 {
bb:
  %i = alloca %"class.std::vector"*, align 8
  %i2 = alloca i32*, align 8
  store %"class.std::vector"* %arg, %"class.std::vector"** %i, align 8
  store i32* %arg1, i32** %i2, align 8
  %i3 = load %"class.std::vector"*, %"class.std::vector"** %i, align 8
  %i4 = load i32*, i32** %i2, align 8
  %i5 = call nonnull align 4 dereferenceable(4) i32* @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_(i32* nonnull align 4 dereferenceable(4) %i4) #9
  %i6 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_(%"class.std::vector"* %i3, i32* nonnull align 4 dereferenceable(4) %i5)
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE9push_backERKi(%"class.std::vector"* %arg, i32* nonnull align 4 dereferenceable(4) %arg1) #0 comdat align 2 {
bb:
  %i = alloca %"class.std::vector"*, align 8
  %i2 = alloca i32*, align 8
  %i3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %"class.std::vector"* %arg, %"class.std::vector"** %i, align 8
  store i32* %arg1, i32** %i2, align 8
  %i4 = load %"class.std::vector"*, %"class.std::vector"** %i, align 8
  %i5 = bitcast %"class.std::vector"* %i4 to %"struct.std::_Vector_base"*
  %i6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %i5, i32 0, i32 0
  %i7 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %i6 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %i8 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %i7, i32 0, i32 1
  %i9 = load i32*, i32** %i8, align 8
  %i10 = bitcast %"class.std::vector"* %i4 to %"struct.std::_Vector_base"*
  %i11 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %i10, i32 0, i32 0
  %i12 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %i11 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %i13 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %i12, i32 0, i32 2
  %i14 = load i32*, i32** %i13, align 8
  %i15 = icmp ne i32* %i9, %i14
  br i1 %i15, label %bb16, label %bb32

bb16:                                             ; preds = %bb
  %i17 = bitcast %"class.std::vector"* %i4 to %"struct.std::_Vector_base"*
  %i18 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %i17, i32 0, i32 0
  %i19 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %i18 to %"class.std::allocator"*
  %i20 = bitcast %"class.std::vector"* %i4 to %"struct.std::_Vector_base"*
  %i21 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %i20, i32 0, i32 0
  %i22 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %i21 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %i23 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %i22, i32 0, i32 1
  %i24 = load i32*, i32** %i23, align 8
  %i25 = load i32*, i32** %i2, align 8
  call void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %i19, i32* %i24, i32* nonnull align 4 dereferenceable(4) %i25) #9
  %i26 = bitcast %"class.std::vector"* %i4 to %"struct.std::_Vector_base"*
  %i27 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %i26, i32 0, i32 0
  %i28 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %i27 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %i29 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %i28, i32 0, i32 1
  %i30 = load i32*, i32** %i29, align 8
  %i31 = getelementptr inbounds i32, i32* %i30, i32 1
  store i32* %i31, i32** %i29, align 8
  br label %bb38

bb32:                                             ; preds = %bb
  %i33 = call i32* @_ZNSt6vectorIiSaIiEE3endEv(%"class.std::vector"* %i4) #9
  %i34 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %i3, i32 0, i32 0
  store i32* %i33, i32** %i34, align 8
  %i35 = load i32*, i32** %i2, align 8
  %i36 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %i3, i32 0, i32 0
  %i37 = load i32*, i32** %i36, align 8
  call void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(%"class.std::vector"* %i4, i32* %i37, i32* nonnull align 4 dereferenceable(4) %i35)
  br label %bb38

bb38:                                             ; preds = %bb32, %bb16
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %arg) #1 comdat align 2 {
bb:
  %i = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %arg, %"class.std::vector"** %i, align 8
  %i1 = load %"class.std::vector"*, %"class.std::vector"** %i, align 8
  %i2 = bitcast %"class.std::vector"* %i1 to %"struct.std::_Vector_base"*
  %i3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %i2, i32 0, i32 0
  %i4 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %i3 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %i5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %i4, i32 0, i32 1
  %i6 = load i32*, i32** %i5, align 8
  %i7 = bitcast %"class.std::vector"* %i1 to %"struct.std::_Vector_base"*
  %i8 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %i7, i32 0, i32 0
  %i9 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %i8 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %i10 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %i9, i32 0, i32 0
  %i11 = load i32*, i32** %i10, align 8
  %i12 = ptrtoint i32* %i6 to i64
  %i13 = ptrtoint i32* %i11 to i64
  %i14 = sub i64 %i12, %i13
  %i15 = sdiv exact i64 %i14, 4
  ret i64 %i15
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_(%"class.std::vector"* %arg, i32* nonnull align 4 dereferenceable(4) %arg1) #0 comdat align 2 {
bb:
  %i = alloca %"class.std::vector"*, align 8
  %i2 = alloca i32*, align 8
  %i3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %"class.std::vector"* %arg, %"class.std::vector"** %i, align 8
  store i32* %arg1, i32** %i2, align 8
  %i4 = load %"class.std::vector"*, %"class.std::vector"** %i, align 8
  %i5 = bitcast %"class.std::vector"* %i4 to %"struct.std::_Vector_base"*
  %i6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %i5, i32 0, i32 0
  %i7 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %i6 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %i8 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %i7, i32 0, i32 1
  %i9 = load i32*, i32** %i8, align 8
  %i10 = bitcast %"class.std::vector"* %i4 to %"struct.std::_Vector_base"*
  %i11 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %i10, i32 0, i32 0
  %i12 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %i11 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %i13 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %i12, i32 0, i32 2
  %i14 = load i32*, i32** %i13, align 8
  %i15 = icmp ne i32* %i9, %i14
  br i1 %i15, label %bb16, label %bb33

bb16:                                             ; preds = %bb
  %i17 = bitcast %"class.std::vector"* %i4 to %"struct.std::_Vector_base"*
  %i18 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %i17, i32 0, i32 0
  %i19 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %i18 to %"class.std::allocator"*
  %i20 = bitcast %"class.std::vector"* %i4 to %"struct.std::_Vector_base"*
  %i21 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %i20, i32 0, i32 0
  %i22 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %i21 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %i23 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %i22, i32 0, i32 1
  %i24 = load i32*, i32** %i23, align 8
  %i25 = load i32*, i32** %i2, align 8
  %i26 = call nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE(i32* nonnull align 4 dereferenceable(4) %i25) #9
  call void @_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %i19, i32* %i24, i32* nonnull align 4 dereferenceable(4) %i26) #9
  %i27 = bitcast %"class.std::vector"* %i4 to %"struct.std::_Vector_base"*
  %i28 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %i27, i32 0, i32 0
  %i29 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %i28 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %i30 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %i29, i32 0, i32 1
  %i31 = load i32*, i32** %i30, align 8
  %i32 = getelementptr inbounds i32, i32* %i31, i32 1
  store i32* %i32, i32** %i30, align 8
  br label %bb40

bb33:                                             ; preds = %bb
  %i34 = call i32* @_ZNSt6vectorIiSaIiEE3endEv(%"class.std::vector"* %i4) #9
  %i35 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %i3, i32 0, i32 0
  store i32* %i34, i32** %i35, align 8
  %i36 = load i32*, i32** %i2, align 8
  %i37 = call nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE(i32* nonnull align 4 dereferenceable(4) %i36) #9
  %i38 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %i3, i32 0, i32 0
  %i39 = load i32*, i32** %i38, align 8
  call void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(%"class.std::vector"* %i4, i32* %i39, i32* nonnull align 4 dereferenceable(4) %i37)
  br label %bb40

bb40:                                             ; preds = %bb33, %bb16
  %i41 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEE4backEv(%"class.std::vector"* %i4) #9
  ret i32* %i41
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZSt4moveIRiEONSt16remove_referenceIT_E4typeEOS2_(i32* nonnull align 4 dereferenceable(4) %arg) #1 comdat {
bb:
  %i = alloca i32*, align 8
  store i32* %arg, i32** %i, align 8
  %i1 = load i32*, i32** %i, align 8
  ret i32* %i1
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %arg, i32* %arg1, i32* nonnull align 4 dereferenceable(4) %arg2) #1 comdat align 2 {
bb:
  %i = alloca %"class.std::allocator"*, align 8
  %i3 = alloca i32*, align 8
  %i4 = alloca i32*, align 8
  store %"class.std::allocator"* %arg, %"class.std::allocator"** %i, align 8
  store i32* %arg1, i32** %i3, align 8
  store i32* %arg2, i32** %i4, align 8
  %i5 = load %"class.std::allocator"*, %"class.std::allocator"** %i, align 8
  %i6 = bitcast %"class.std::allocator"* %i5 to %"class.__gnu_cxx::new_allocator"*
  %i7 = load i32*, i32** %i3, align 8
  %i8 = load i32*, i32** %i4, align 8
  %i9 = call nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE(i32* nonnull align 4 dereferenceable(4) %i8) #9
  call void @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJiEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* %i6, i32* %i7, i32* nonnull align 4 dereferenceable(4) %i9) #9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE(i32* nonnull align 4 dereferenceable(4) %arg) #1 comdat {
bb:
  %i = alloca i32*, align 8
  store i32* %arg, i32** %i, align 8
  %i1 = load i32*, i32** %i, align 8
  ret i32* %i1
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(%"class.std::vector"* %arg, i32* %arg1, i32* nonnull align 4 dereferenceable(4) %arg2) #0 comdat align 2 {
bb:
  %i = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %i3 = alloca %"class.std::vector"*, align 8
  %i4 = alloca i32*, align 8
  %i5 = alloca i64, align 8
  %i6 = alloca i32*, align 8
  %i7 = alloca i32*, align 8
  %i8 = alloca i64, align 8
  %i9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %i10 = alloca i32*, align 8
  %i11 = alloca i32*, align 8
  %i12 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %i, i32 0, i32 0
  store i32* %arg1, i32** %i12, align 8
  store %"class.std::vector"* %arg, %"class.std::vector"** %i3, align 8
  store i32* %arg2, i32** %i4, align 8
  %i13 = load %"class.std::vector"*, %"class.std::vector"** %i3, align 8
  %i14 = call i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%"class.std::vector"* %i13, i64 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i64 %i14, i64* %i5, align 8
  %i15 = bitcast %"class.std::vector"* %i13 to %"struct.std::_Vector_base"*
  %i16 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %i15, i32 0, i32 0
  %i17 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %i16 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %i18 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %i17, i32 0, i32 0
  %i19 = load i32*, i32** %i18, align 8
  store i32* %i19, i32** %i6, align 8
  %i20 = bitcast %"class.std::vector"* %i13 to %"struct.std::_Vector_base"*
  %i21 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %i20, i32 0, i32 0
  %i22 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %i21 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %i23 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %i22, i32 0, i32 1
  %i24 = load i32*, i32** %i23, align 8
  store i32* %i24, i32** %i7, align 8
  %i25 = call i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector"* %i13) #9
  %i26 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %i9, i32 0, i32 0
  store i32* %i25, i32** %i26, align 8
  %i27 = call i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %i, %"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %i9) #9
  store i64 %i27, i64* %i8, align 8
  %i28 = bitcast %"class.std::vector"* %i13 to %"struct.std::_Vector_base"*
  %i29 = load i64, i64* %i5, align 8
  %i30 = call i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base"* %i28, i64 %i29)
  store i32* %i30, i32** %i10, align 8
  %i31 = load i32*, i32** %i10, align 8
  store i32* %i31, i32** %i11, align 8
  %i32 = bitcast %"class.std::vector"* %i13 to %"struct.std::_Vector_base"*
  %i33 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %i32, i32 0, i32 0
  %i34 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %i33 to %"class.std::allocator"*
  %i35 = load i32*, i32** %i10, align 8
  %i36 = load i64, i64* %i8, align 8
  %i37 = getelementptr inbounds i32, i32* %i35, i64 %i36
  %i38 = load i32*, i32** %i4, align 8
  %i39 = call nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE(i32* nonnull align 4 dereferenceable(4) %i38) #9
  call void @_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %i34, i32* %i37, i32* nonnull align 4 dereferenceable(4) %i39) #9
  store i32* null, i32** %i11, align 8
  %i40 = load i32*, i32** %i6, align 8
  %i41 = call nonnull align 8 dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %i) #9
  %i42 = load i32*, i32** %i41, align 8
  %i43 = load i32*, i32** %i10, align 8
  %i44 = bitcast %"class.std::vector"* %i13 to %"struct.std::_Vector_base"*
  %i45 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %i44) #9
  %i46 = call i32* @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(i32* %i40, i32* %i42, i32* %i43, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %i45) #9
  store i32* %i46, i32** %i11, align 8
  %i47 = load i32*, i32** %i11, align 8
  %i48 = getelementptr inbounds i32, i32* %i47, i32 1
  store i32* %i48, i32** %i11, align 8
  %i49 = call nonnull align 8 dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %i) #9
  %i50 = load i32*, i32** %i49, align 8
  %i51 = load i32*, i32** %i7, align 8
  %i52 = load i32*, i32** %i11, align 8
  %i53 = bitcast %"class.std::vector"* %i13 to %"struct.std::_Vector_base"*
  %i54 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %i53) #9
  %i55 = call i32* @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(i32* %i50, i32* %i51, i32* %i52, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %i54) #9
  store i32* %i55, i32** %i11, align 8
  %i56 = bitcast %"class.std::vector"* %i13 to %"struct.std::_Vector_base"*
  %i57 = load i32*, i32** %i6, align 8
  %i58 = bitcast %"class.std::vector"* %i13 to %"struct.std::_Vector_base"*
  %i59 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %i58, i32 0, i32 0
  %i60 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %i59 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %i61 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %i60, i32 0, i32 2
  %i62 = load i32*, i32** %i61, align 8
  %i63 = load i32*, i32** %i6, align 8
  %i64 = ptrtoint i32* %i62 to i64
  %i65 = ptrtoint i32* %i63 to i64
  %i66 = sub i64 %i64, %i65
  %i67 = sdiv exact i64 %i66, 4
  call void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base"* %i56, i32* %i57, i64 %i67)
  %i68 = load i32*, i32** %i10, align 8
  %i69 = bitcast %"class.std::vector"* %i13 to %"struct.std::_Vector_base"*
  %i70 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %i69, i32 0, i32 0
  %i71 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %i70 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %i72 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %i71, i32 0, i32 0
  store i32* %i68, i32** %i72, align 8
  %i73 = load i32*, i32** %i11, align 8
  %i74 = bitcast %"class.std::vector"* %i13 to %"struct.std::_Vector_base"*
  %i75 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %i74, i32 0, i32 0
  %i76 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %i75 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %i77 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %i76, i32 0, i32 1
  store i32* %i73, i32** %i77, align 8
  %i78 = load i32*, i32** %i10, align 8
  %i79 = load i64, i64* %i5, align 8
  %i80 = getelementptr inbounds i32, i32* %i78, i64 %i79
  %i81 = bitcast %"class.std::vector"* %i13 to %"struct.std::_Vector_base"*
  %i82 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %i81, i32 0, i32 0
  %i83 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %i82 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %i84 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %i83, i32 0, i32 2
  store i32* %i80, i32** %i84, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32* @_ZNSt6vectorIiSaIiEE3endEv(%"class.std::vector"* %arg) #1 comdat align 2 {
bb:
  %i = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %i1 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %arg, %"class.std::vector"** %i1, align 8
  %i2 = load %"class.std::vector"*, %"class.std::vector"** %i1, align 8
  %i3 = bitcast %"class.std::vector"* %i2 to %"struct.std::_Vector_base"*
  %i4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %i3, i32 0, i32 0
  %i5 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %i4 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %i6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %i5, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* %i, i32** nonnull align 8 dereferenceable(8) %i6) #9
  %i7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %i, i32 0, i32 0
  %i8 = load i32*, i32** %i7, align 8
  ret i32* %i8
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEE4backEv(%"class.std::vector"* %arg) #1 comdat align 2 {
bb:
  %i = alloca %"class.std::vector"*, align 8
  %i1 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %i2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store %"class.std::vector"* %arg, %"class.std::vector"** %i, align 8
  %i3 = load %"class.std::vector"*, %"class.std::vector"** %i, align 8
  %i4 = call i32* @_ZNSt6vectorIiSaIiEE3endEv(%"class.std::vector"* %i3) #9
  %i5 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %i2, i32 0, i32 0
  store i32* %i4, i32** %i5, align 8
  %i6 = call i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEl(%"class.__gnu_cxx::__normal_iterator"* %i2, i64 1) #9
  %i7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %i1, i32 0, i32 0
  store i32* %i6, i32** %i7, align 8
  %i8 = call nonnull align 4 dereferenceable(4) i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %i1) #9
  ret i32* %i8
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJiEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* %arg, i32* %arg1, i32* nonnull align 4 dereferenceable(4) %arg2) #1 comdat align 2 {
bb:
  %i = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %i3 = alloca i32*, align 8
  %i4 = alloca i32*, align 8
  store %"class.__gnu_cxx::new_allocator"* %arg, %"class.__gnu_cxx::new_allocator"** %i, align 8
  store i32* %arg1, i32** %i3, align 8
  store i32* %arg2, i32** %i4, align 8
  %i5 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %i, align 8
  %i6 = load i32*, i32** %i3, align 8
  %i7 = bitcast i32* %i6 to i8*
  %i8 = bitcast i8* %i7 to i32*
  %i9 = load i32*, i32** %i4, align 8
  %i10 = call nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE(i32* nonnull align 4 dereferenceable(4) %i9) #9
  %i11 = load i32, i32* %i10, align 4
  store i32 %i11, i32* %i8, align 4
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%"class.std::vector"* %arg, i64 %arg1, i8* %arg2) #0 comdat align 2 {
bb:
  %i = alloca %"class.std::vector"*, align 8
  %i3 = alloca i64, align 8
  %i4 = alloca i8*, align 8
  %i5 = alloca i64, align 8
  %i6 = alloca i64, align 8
  store %"class.std::vector"* %arg, %"class.std::vector"** %i, align 8
  store i64 %arg1, i64* %i3, align 8
  store i8* %arg2, i8** %i4, align 8
  %i7 = load %"class.std::vector"*, %"class.std::vector"** %i, align 8
  %i8 = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector"* %i7) #9
  %i9 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %i7) #9
  %i10 = sub i64 %i8, %i9
  %i11 = load i64, i64* %i3, align 8
  %i12 = icmp ult i64 %i10, %i11
  br i1 %i12, label %bb13, label %bb15

bb13:                                             ; preds = %bb
  %i14 = load i8*, i8** %i4, align 8
  call void @_ZSt20__throw_length_errorPKc(i8* %i14) #10
  unreachable

bb15:                                             ; preds = %bb
  %i16 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %i7) #9
  %i17 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %i7) #9
  store i64 %i17, i64* %i6, align 8
  %i18 = call nonnull align 8 dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %i6, i64* nonnull align 8 dereferenceable(8) %i3)
  %i19 = load i64, i64* %i18, align 8
  %i20 = add i64 %i16, %i19
  store i64 %i20, i64* %i5, align 8
  %i21 = load i64, i64* %i5, align 8
  %i22 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %i7) #9
  %i23 = icmp ult i64 %i21, %i22
  br i1 %i23, label %bb28, label %bb24

bb24:                                             ; preds = %bb15
  %i25 = load i64, i64* %i5, align 8
  %i26 = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector"* %i7) #9
  %i27 = icmp ugt i64 %i25, %i26
  br i1 %i27, label %bb28, label %bb30

bb28:                                             ; preds = %bb24, %bb15
  %i29 = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector"* %i7) #9
  br label %bb32

bb30:                                             ; preds = %bb24
  %i31 = load i64, i64* %i5, align 8
  br label %bb32

bb32:                                             ; preds = %bb30, %bb28
  %i33 = phi i64 [ %i29, %bb28 ], [ %i31, %bb30 ]
  ret i64 %i33
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %arg, %"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %arg1) #1 comdat {
bb:
  %i = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %i2 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %arg, %"class.__gnu_cxx::__normal_iterator"** %i, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %arg1, %"class.__gnu_cxx::__normal_iterator"** %i2, align 8
  %i3 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %i, align 8
  %i4 = call nonnull align 8 dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %i3) #9
  %i5 = load i32*, i32** %i4, align 8
  %i6 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %i2, align 8
  %i7 = call nonnull align 8 dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %i6) #9
  %i8 = load i32*, i32** %i7, align 8
  %i9 = ptrtoint i32* %i5 to i64
  %i10 = ptrtoint i32* %i8 to i64
  %i11 = sub i64 %i9, %i10
  %i12 = sdiv exact i64 %i11, 4
  ret i64 %i12
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector"* %arg) #1 comdat align 2 {
bb:
  %i = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %i1 = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %arg, %"class.std::vector"** %i1, align 8
  %i2 = load %"class.std::vector"*, %"class.std::vector"** %i1, align 8
  %i3 = bitcast %"class.std::vector"* %i2 to %"struct.std::_Vector_base"*
  %i4 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %i3, i32 0, i32 0
  %i5 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %i4 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %i6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %i5, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* %i, i32** nonnull align 8 dereferenceable(8) %i6) #9
  %i7 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %i, i32 0, i32 0
  %i8 = load i32*, i32** %i7, align 8
  ret i32* %i8
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base"* %arg, i64 %arg1) #0 comdat align 2 {
bb:
  %i = alloca %"struct.std::_Vector_base"*, align 8
  %i2 = alloca i64, align 8
  store %"struct.std::_Vector_base"* %arg, %"struct.std::_Vector_base"** %i, align 8
  store i64 %arg1, i64* %i2, align 8
  %i3 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %i, align 8
  %i4 = load i64, i64* %i2, align 8
  %i5 = icmp ne i64 %i4, 0
  br i1 %i5, label %bb6, label %bb11

bb6:                                              ; preds = %bb
  %i7 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %i3, i32 0, i32 0
  %i8 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %i7 to %"class.std::allocator"*
  %i9 = load i64, i64* %i2, align 8
  %i10 = call i32* @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %i8, i64 %i9)
  br label %bb12

bb11:                                             ; preds = %bb
  br label %bb12

bb12:                                             ; preds = %bb11, %bb6
  %i13 = phi i32* [ %i10, %bb6 ], [ null, %bb11 ]
  ret i32* %i13
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32* @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(i32* %arg, i32* %arg1, i32* %arg2, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %arg3) #1 comdat align 2 {
bb:
  %i = alloca i32*, align 8
  %i4 = alloca i32*, align 8
  %i5 = alloca i32*, align 8
  %i6 = alloca %"class.std::allocator"*, align 8
  %i7 = alloca %"struct.std::integral_constant", align 1
  store i32* %arg, i32** %i, align 8
  store i32* %arg1, i32** %i4, align 8
  store i32* %arg2, i32** %i5, align 8
  store %"class.std::allocator"* %arg3, %"class.std::allocator"** %i6, align 8
  %i8 = load i32*, i32** %i, align 8
  %i9 = load i32*, i32** %i4, align 8
  %i10 = load i32*, i32** %i5, align 8
  %i11 = load %"class.std::allocator"*, %"class.std::allocator"** %i6, align 8
  %i12 = call i32* @_ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE(i32* %i8, i32* %i9, i32* %i10, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %i11) #9
  ret i32* %i12
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %arg) #1 comdat align 2 {
bb:
  %i = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %arg, %"class.__gnu_cxx::__normal_iterator"** %i, align 8
  %i1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %i, align 8
  %i2 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %i1, i32 0, i32 0
  ret i32** %i2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %arg) #1 comdat align 2 {
bb:
  %i = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %arg, %"struct.std::_Vector_base"** %i, align 8
  %i1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %i, align 8
  %i2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %i1, i32 0, i32 0
  %i3 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %i2 to %"class.std::allocator"*
  ret %"class.std::allocator"* %i3
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base"* %arg, i32* %arg1, i64 %arg2) #0 comdat align 2 {
bb:
  %i = alloca %"struct.std::_Vector_base"*, align 8
  %i3 = alloca i32*, align 8
  %i4 = alloca i64, align 8
  store %"struct.std::_Vector_base"* %arg, %"struct.std::_Vector_base"** %i, align 8
  store i32* %arg1, i32** %i3, align 8
  store i64 %arg2, i64* %i4, align 8
  %i5 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %i, align 8
  %i6 = load i32*, i32** %i3, align 8
  %i7 = icmp ne i32* %i6, null
  br i1 %i7, label %bb8, label %bb13

bb8:                                              ; preds = %bb
  %i9 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %i5, i32 0, i32 0
  %i10 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %i9 to %"class.std::allocator"*
  %i11 = load i32*, i32** %i3, align 8
  %i12 = load i64, i64* %i4, align 8
  call void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %i10, i32* %i11, i64 %i12)
  br label %bb13

bb13:                                             ; preds = %bb8, %bb
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector"* %arg) #1 comdat align 2 {
bb:
  %i = alloca %"class.std::vector"*, align 8
  store %"class.std::vector"* %arg, %"class.std::vector"** %i, align 8
  %i1 = load %"class.std::vector"*, %"class.std::vector"** %i, align 8
  %i2 = bitcast %"class.std::vector"* %i1 to %"struct.std::_Vector_base"*
  %i3 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %i2) #9
  %i4 = call i64 @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %i3) #9
  ret i64 %i4
}

; Function Attrs: noreturn
declare dso_local void @_ZSt20__throw_length_errorPKc(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %arg, i64* nonnull align 8 dereferenceable(8) %arg1) #1 comdat {
bb:
  %i = alloca i64*, align 8
  %i2 = alloca i64*, align 8
  %i3 = alloca i64*, align 8
  store i64* %arg, i64** %i2, align 8
  store i64* %arg1, i64** %i3, align 8
  %i4 = load i64*, i64** %i2, align 8
  %i5 = load i64, i64* %i4, align 8
  %i6 = load i64*, i64** %i3, align 8
  %i7 = load i64, i64* %i6, align 8
  %i8 = icmp ult i64 %i5, %i7
  br i1 %i8, label %bb9, label %bb11

bb9:                                              ; preds = %bb
  %i10 = load i64*, i64** %i3, align 8
  store i64* %i10, i64** %i, align 8
  br label %bb13

bb11:                                             ; preds = %bb
  %i12 = load i64*, i64** %i2, align 8
  store i64* %i12, i64** %i, align 8
  br label %bb13

bb13:                                             ; preds = %bb11, %bb9
  %i14 = load i64*, i64** %i, align 8
  ret i64* %i14
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %arg) #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
bb:
  %i = alloca %"class.std::allocator"*, align 8
  %i1 = alloca i64, align 8
  %i2 = alloca i64, align 8
  store %"class.std::allocator"* %arg, %"class.std::allocator"** %i, align 8
  store i64 2305843009213693951, i64* %i1, align 8
  %i3 = load %"class.std::allocator"*, %"class.std::allocator"** %i, align 8
  %i4 = call i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %i3) #9
  store i64 %i4, i64* %i2, align 8
  %i5 = call nonnull align 8 dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %i1, i64* nonnull align 8 dereferenceable(8) %i2)
  br label %bb6

bb6:                                              ; preds = %bb
  %i7 = load i64, i64* %i5, align 8
  ret i64 %i7
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %arg) #1 comdat align 2 {
bb:
  %i = alloca %"struct.std::_Vector_base"*, align 8
  store %"struct.std::_Vector_base"* %arg, %"struct.std::_Vector_base"** %i, align 8
  %i1 = load %"struct.std::_Vector_base"*, %"struct.std::_Vector_base"** %i, align 8
  %i2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %i1, i32 0, i32 0
  %i3 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %i2 to %"class.std::allocator"*
  ret %"class.std::allocator"* %i3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %arg) #1 comdat align 2 {
bb:
  %i = alloca %"class.std::allocator"*, align 8
  store %"class.std::allocator"* %arg, %"class.std::allocator"** %i, align 8
  %i1 = load %"class.std::allocator"*, %"class.std::allocator"** %i, align 8
  %i2 = bitcast %"class.std::allocator"* %i1 to %"class.__gnu_cxx::new_allocator"*
  %i3 = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %i2) #9
  ret i64 %i3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64* @_ZSt3minImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %arg, i64* nonnull align 8 dereferenceable(8) %arg1) #1 comdat {
bb:
  %i = alloca i64*, align 8
  %i2 = alloca i64*, align 8
  %i3 = alloca i64*, align 8
  store i64* %arg, i64** %i2, align 8
  store i64* %arg1, i64** %i3, align 8
  %i4 = load i64*, i64** %i3, align 8
  %i5 = load i64, i64* %i4, align 8
  %i6 = load i64*, i64** %i2, align 8
  %i7 = load i64, i64* %i6, align 8
  %i8 = icmp ult i64 %i5, %i7
  br i1 %i8, label %bb9, label %bb11

bb9:                                              ; preds = %bb
  %i10 = load i64*, i64** %i3, align 8
  store i64* %i10, i64** %i, align 8
  br label %bb13

bb11:                                             ; preds = %bb
  %i12 = load i64*, i64** %i2, align 8
  store i64* %i12, i64** %i, align 8
  br label %bb13

bb13:                                             ; preds = %bb11, %bb9
  %i14 = load i64*, i64** %i, align 8
  ret i64* %i14
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %arg) #5 comdat {
bb:
  %i = call i8* @__cxa_begin_catch(i8* %arg) #9
  call void @_ZSt9terminatev() #11
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local void @_ZSt9terminatev()

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.__gnu_cxx::new_allocator"* %arg) #1 comdat align 2 {
bb:
  %i = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %arg, %"class.__gnu_cxx::new_allocator"** %i, align 8
  %i1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %i, align 8
  %i2 = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv(%"class.__gnu_cxx::new_allocator"* %i1) #9
  ret i64 %i2
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv(%"class.__gnu_cxx::new_allocator"* %arg) #1 comdat align 2 {
bb:
  %i = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  store %"class.__gnu_cxx::new_allocator"* %arg, %"class.__gnu_cxx::new_allocator"** %i, align 8
  %i1 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %i, align 8
  ret i64 2305843009213693951
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* %arg, i32** nonnull align 8 dereferenceable(8) %arg1) unnamed_addr #1 comdat align 2 {
bb:
  %i = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %i2 = alloca i32**, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %arg, %"class.__gnu_cxx::__normal_iterator"** %i, align 8
  store i32** %arg1, i32*** %i2, align 8
  %i3 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %i, align 8
  %i4 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %i3, i32 0, i32 0
  %i5 = load i32**, i32*** %i2, align 8
  %i6 = load i32*, i32** %i5, align 8
  store i32* %i6, i32** %i4, align 8
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %arg, i64 %arg1) #0 comdat align 2 {
bb:
  %i = alloca %"class.std::allocator"*, align 8
  %i2 = alloca i64, align 8
  store %"class.std::allocator"* %arg, %"class.std::allocator"** %i, align 8
  store i64 %arg1, i64* %i2, align 8
  %i3 = load %"class.std::allocator"*, %"class.std::allocator"** %i, align 8
  %i4 = bitcast %"class.std::allocator"* %i3 to %"class.__gnu_cxx::new_allocator"*
  %i5 = load i64, i64* %i2, align 8
  %i6 = call i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %i4, i64 %i5, i8* null)
  ret i32* %i6
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.__gnu_cxx::new_allocator"* %arg, i64 %arg1, i8* %arg2) #0 comdat align 2 {
bb:
  %i = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %i3 = alloca i64, align 8
  %i4 = alloca i8*, align 8
  store %"class.__gnu_cxx::new_allocator"* %arg, %"class.__gnu_cxx::new_allocator"** %i, align 8
  store i64 %arg1, i64* %i3, align 8
  store i8* %arg2, i8** %i4, align 8
  %i5 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %i, align 8
  %i6 = load i64, i64* %i3, align 8
  %i7 = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE11_M_max_sizeEv(%"class.__gnu_cxx::new_allocator"* %i5) #9
  %i8 = icmp ugt i64 %i6, %i7
  br i1 %i8, label %bb9, label %bb14

bb9:                                              ; preds = %bb
  %i10 = load i64, i64* %i3, align 8
  %i11 = icmp ugt i64 %i10, 4611686018427387903
  br i1 %i11, label %bb12, label %bb13

bb12:                                             ; preds = %bb9
  call void @_ZSt28__throw_bad_array_new_lengthv() #10
  unreachable

bb13:                                             ; preds = %bb9
  call void @_ZSt17__throw_bad_allocv() #10
  unreachable

bb14:                                             ; preds = %bb
  %i15 = load i64, i64* %i3, align 8
  %i16 = mul i64 %i15, 4
  %i17 = call noalias nonnull i8* @_Znwm(i64 %i16) #12
  %i18 = bitcast i8* %i17 to i32*
  ret i32* %i18
}

; Function Attrs: noreturn
declare dso_local void @_ZSt28__throw_bad_array_new_lengthv() #4

; Function Attrs: noreturn
declare dso_local void @_ZSt17__throw_bad_allocv() #4

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32* @_ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE(i32* %arg, i32* %arg1, i32* %arg2, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %arg3) #1 comdat align 2 {
bb:
  %i = alloca %"struct.std::integral_constant", align 1
  %i4 = alloca i32*, align 8
  %i5 = alloca i32*, align 8
  %i6 = alloca i32*, align 8
  %i7 = alloca %"class.std::allocator"*, align 8
  store i32* %arg, i32** %i4, align 8
  store i32* %arg1, i32** %i5, align 8
  store i32* %arg2, i32** %i6, align 8
  store %"class.std::allocator"* %arg3, %"class.std::allocator"** %i7, align 8
  %i8 = load i32*, i32** %i4, align 8
  %i9 = load i32*, i32** %i5, align 8
  %i10 = load i32*, i32** %i6, align 8
  %i11 = load %"class.std::allocator"*, %"class.std::allocator"** %i7, align 8
  %i12 = call i32* @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_(i32* %i8, i32* %i9, i32* %i10, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %i11) #9
  ret i32* %i12
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32* @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_(i32* %arg, i32* %arg1, i32* %arg2, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %arg3) #1 comdat {
bb:
  %i = alloca i32*, align 8
  %i4 = alloca i32*, align 8
  %i5 = alloca i32*, align 8
  %i6 = alloca %"class.std::allocator"*, align 8
  store i32* %arg, i32** %i, align 8
  store i32* %arg1, i32** %i4, align 8
  store i32* %arg2, i32** %i5, align 8
  store %"class.std::allocator"* %arg3, %"class.std::allocator"** %i6, align 8
  %i7 = load i32*, i32** %i, align 8
  %i8 = call i32* @_ZSt12__niter_baseIPiET_S1_(i32* %i7) #9
  %i9 = load i32*, i32** %i4, align 8
  %i10 = call i32* @_ZSt12__niter_baseIPiET_S1_(i32* %i9) #9
  %i11 = load i32*, i32** %i5, align 8
  %i12 = call i32* @_ZSt12__niter_baseIPiET_S1_(i32* %i11) #9
  %i13 = load %"class.std::allocator"*, %"class.std::allocator"** %i6, align 8
  %i14 = call i32* @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(i32* %i8, i32* %i10, i32* %i12, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %i13) #9
  ret i32* %i14
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32* @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(i32* %arg, i32* %arg1, i32* %arg2, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %arg3) #1 comdat {
bb:
  %i = alloca i32*, align 8
  %i4 = alloca i32*, align 8
  %i5 = alloca i32*, align 8
  %i6 = alloca %"class.std::allocator"*, align 8
  %i7 = alloca i64, align 8
  store i32* %arg, i32** %i, align 8
  store i32* %arg1, i32** %i4, align 8
  store i32* %arg2, i32** %i5, align 8
  store %"class.std::allocator"* %arg3, %"class.std::allocator"** %i6, align 8
  %i8 = load i32*, i32** %i4, align 8
  %i9 = load i32*, i32** %i, align 8
  %i10 = ptrtoint i32* %i8 to i64
  %i11 = ptrtoint i32* %i9 to i64
  %i12 = sub i64 %i10, %i11
  %i13 = sdiv exact i64 %i12, 4
  store i64 %i13, i64* %i7, align 8
  %i14 = load i64, i64* %i7, align 8
  %i15 = icmp sgt i64 %i14, 0
  br i1 %i15, label %bb16, label %bb23

bb16:                                             ; preds = %bb
  %i17 = load i32*, i32** %i5, align 8
  %i18 = bitcast i32* %i17 to i8*
  %i19 = load i32*, i32** %i, align 8
  %i20 = bitcast i32* %i19 to i8*
  %i21 = load i64, i64* %i7, align 8
  %i22 = mul i64 %i21, 4
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %i18, i8* align 4 %i20, i64 %i22, i1 false)
  br label %bb23

bb23:                                             ; preds = %bb16, %bb
  %i24 = load i32*, i32** %i5, align 8
  %i25 = load i64, i64* %i7, align 8
  %i26 = getelementptr inbounds i32, i32* %i24, i64 %i25
  ret i32* %i26
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32* @_ZSt12__niter_baseIPiET_S1_(i32* %arg) #1 comdat {
bb:
  %i = alloca i32*, align 8
  store i32* %arg, i32** %i, align 8
  %i1 = load i32*, i32** %i, align 8
  ret i32* %i1
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %arg, i32* %arg1, i64 %arg2) #0 comdat align 2 {
bb:
  %i = alloca %"class.std::allocator"*, align 8
  %i3 = alloca i32*, align 8
  %i4 = alloca i64, align 8
  store %"class.std::allocator"* %arg, %"class.std::allocator"** %i, align 8
  store i32* %arg1, i32** %i3, align 8
  store i64 %arg2, i64* %i4, align 8
  %i5 = load %"class.std::allocator"*, %"class.std::allocator"** %i, align 8
  %i6 = bitcast %"class.std::allocator"* %i5 to %"class.__gnu_cxx::new_allocator"*
  %i7 = load i32*, i32** %i3, align 8
  %i8 = load i64, i64* %i4, align 8
  call void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.__gnu_cxx::new_allocator"* %i6, i32* %i7, i64 %i8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.__gnu_cxx::new_allocator"* %arg, i32* %arg1, i64 %arg2) #1 comdat align 2 {
bb:
  %i = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %i3 = alloca i32*, align 8
  %i4 = alloca i64, align 8
  store %"class.__gnu_cxx::new_allocator"* %arg, %"class.__gnu_cxx::new_allocator"** %i, align 8
  store i32* %arg1, i32** %i3, align 8
  store i64 %arg2, i64* %i4, align 8
  %i5 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %i, align 8
  %i6 = load i32*, i32** %i3, align 8
  %i7 = bitcast i32* %i6 to i8*
  call void @_ZdlPv(i8* %i7) #9
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #7

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEl(%"class.__gnu_cxx::__normal_iterator"* %arg, i64 %arg1) #1 comdat align 2 {
bb:
  %i = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %i2 = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  %i3 = alloca i64, align 8
  %i4 = alloca i32*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %arg, %"class.__gnu_cxx::__normal_iterator"** %i2, align 8
  store i64 %arg1, i64* %i3, align 8
  %i5 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %i2, align 8
  %i6 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %i5, i32 0, i32 0
  %i7 = load i32*, i32** %i6, align 8
  %i8 = load i64, i64* %i3, align 8
  %i9 = sub i64 0, %i8
  %i10 = getelementptr inbounds i32, i32* %i7, i64 %i9
  store i32* %i10, i32** %i4, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(%"class.__gnu_cxx::__normal_iterator"* %i, i32** nonnull align 8 dereferenceable(8) %i4) #9
  %i11 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %i, i32 0, i32 0
  %i12 = load i32*, i32** %i11, align 8
  ret i32* %i12
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(%"class.__gnu_cxx::__normal_iterator"* %arg) #1 comdat align 2 {
bb:
  %i = alloca %"class.__gnu_cxx::__normal_iterator"*, align 8
  store %"class.__gnu_cxx::__normal_iterator"* %arg, %"class.__gnu_cxx::__normal_iterator"** %i, align 8
  %i1 = load %"class.__gnu_cxx::__normal_iterator"*, %"class.__gnu_cxx::__normal_iterator"** %i, align 8
  %i2 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %i1, i32 0, i32 0
  %i3 = load i32*, i32** %i2, align 8
  ret i32* %i3
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %arg, i32* %arg1, i32* nonnull align 4 dereferenceable(4) %arg2) #1 comdat align 2 {
bb:
  %i = alloca %"class.std::allocator"*, align 8
  %i3 = alloca i32*, align 8
  %i4 = alloca i32*, align 8
  store %"class.std::allocator"* %arg, %"class.std::allocator"** %i, align 8
  store i32* %arg1, i32** %i3, align 8
  store i32* %arg2, i32** %i4, align 8
  %i5 = load %"class.std::allocator"*, %"class.std::allocator"** %i, align 8
  %i6 = bitcast %"class.std::allocator"* %i5 to %"class.__gnu_cxx::new_allocator"*
  %i7 = load i32*, i32** %i3, align 8
  %i8 = load i32*, i32** %i4, align 8
  %i9 = call nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* nonnull align 4 dereferenceable(4) %i8) #9
  call void @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* %i6, i32* %i7, i32* nonnull align 4 dereferenceable(4) %i9) #9
  ret void
}

; Function Attrs: noinline optnone uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(%"class.std::vector"* %arg, i32* %arg1, i32* nonnull align 4 dereferenceable(4) %arg2) #0 comdat align 2 {
bb:
  %i = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %i3 = alloca %"class.std::vector"*, align 8
  %i4 = alloca i32*, align 8
  %i5 = alloca i64, align 8
  %i6 = alloca i32*, align 8
  %i7 = alloca i32*, align 8
  %i8 = alloca i64, align 8
  %i9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %i10 = alloca i32*, align 8
  %i11 = alloca i32*, align 8
  %i12 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %i, i32 0, i32 0
  store i32* %arg1, i32** %i12, align 8
  store %"class.std::vector"* %arg, %"class.std::vector"** %i3, align 8
  store i32* %arg2, i32** %i4, align 8
  %i13 = load %"class.std::vector"*, %"class.std::vector"** %i3, align 8
  %i14 = call i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%"class.std::vector"* %i13, i64 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i64 %i14, i64* %i5, align 8
  %i15 = bitcast %"class.std::vector"* %i13 to %"struct.std::_Vector_base"*
  %i16 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %i15, i32 0, i32 0
  %i17 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %i16 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %i18 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %i17, i32 0, i32 0
  %i19 = load i32*, i32** %i18, align 8
  store i32* %i19, i32** %i6, align 8
  %i20 = bitcast %"class.std::vector"* %i13 to %"struct.std::_Vector_base"*
  %i21 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %i20, i32 0, i32 0
  %i22 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %i21 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %i23 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %i22, i32 0, i32 1
  %i24 = load i32*, i32** %i23, align 8
  store i32* %i24, i32** %i7, align 8
  %i25 = call i32* @_ZNSt6vectorIiSaIiEE5beginEv(%"class.std::vector"* %i13) #9
  %i26 = getelementptr inbounds %"class.__gnu_cxx::__normal_iterator", %"class.__gnu_cxx::__normal_iterator"* %i9, i32 0, i32 0
  store i32* %i25, i32** %i26, align 8
  %i27 = call i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %i, %"class.__gnu_cxx::__normal_iterator"* nonnull align 8 dereferenceable(8) %i9) #9
  store i64 %i27, i64* %i8, align 8
  %i28 = bitcast %"class.std::vector"* %i13 to %"struct.std::_Vector_base"*
  %i29 = load i64, i64* %i5, align 8
  %i30 = call i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base"* %i28, i64 %i29)
  store i32* %i30, i32** %i10, align 8
  %i31 = load i32*, i32** %i10, align 8
  store i32* %i31, i32** %i11, align 8
  %i32 = bitcast %"class.std::vector"* %i13 to %"struct.std::_Vector_base"*
  %i33 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %i32, i32 0, i32 0
  %i34 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %i33 to %"class.std::allocator"*
  %i35 = load i32*, i32** %i10, align 8
  %i36 = load i64, i64* %i8, align 8
  %i37 = getelementptr inbounds i32, i32* %i35, i64 %i36
  %i38 = load i32*, i32** %i4, align 8
  %i39 = call nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* nonnull align 4 dereferenceable(4) %i38) #9
  call void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %i34, i32* %i37, i32* nonnull align 4 dereferenceable(4) %i39) #9
  store i32* null, i32** %i11, align 8
  %i40 = load i32*, i32** %i6, align 8
  %i41 = call nonnull align 8 dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %i) #9
  %i42 = load i32*, i32** %i41, align 8
  %i43 = load i32*, i32** %i10, align 8
  %i44 = bitcast %"class.std::vector"* %i13 to %"struct.std::_Vector_base"*
  %i45 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %i44) #9
  %i46 = call i32* @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(i32* %i40, i32* %i42, i32* %i43, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %i45) #9
  store i32* %i46, i32** %i11, align 8
  %i47 = load i32*, i32** %i11, align 8
  %i48 = getelementptr inbounds i32, i32* %i47, i32 1
  store i32* %i48, i32** %i11, align 8
  %i49 = call nonnull align 8 dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%"class.__gnu_cxx::__normal_iterator"* %i) #9
  %i50 = load i32*, i32** %i49, align 8
  %i51 = load i32*, i32** %i7, align 8
  %i52 = load i32*, i32** %i11, align 8
  %i53 = bitcast %"class.std::vector"* %i13 to %"struct.std::_Vector_base"*
  %i54 = call nonnull align 1 dereferenceable(1) %"class.std::allocator"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %i53) #9
  %i55 = call i32* @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(i32* %i50, i32* %i51, i32* %i52, %"class.std::allocator"* nonnull align 1 dereferenceable(1) %i54) #9
  store i32* %i55, i32** %i11, align 8
  %i56 = bitcast %"class.std::vector"* %i13 to %"struct.std::_Vector_base"*
  %i57 = load i32*, i32** %i6, align 8
  %i58 = bitcast %"class.std::vector"* %i13 to %"struct.std::_Vector_base"*
  %i59 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %i58, i32 0, i32 0
  %i60 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %i59 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %i61 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %i60, i32 0, i32 2
  %i62 = load i32*, i32** %i61, align 8
  %i63 = load i32*, i32** %i6, align 8
  %i64 = ptrtoint i32* %i62 to i64
  %i65 = ptrtoint i32* %i63 to i64
  %i66 = sub i64 %i64, %i65
  %i67 = sdiv exact i64 %i66, 4
  call void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base"* %i56, i32* %i57, i64 %i67)
  %i68 = load i32*, i32** %i10, align 8
  %i69 = bitcast %"class.std::vector"* %i13 to %"struct.std::_Vector_base"*
  %i70 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %i69, i32 0, i32 0
  %i71 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %i70 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %i72 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %i71, i32 0, i32 0
  store i32* %i68, i32** %i72, align 8
  %i73 = load i32*, i32** %i11, align 8
  %i74 = bitcast %"class.std::vector"* %i13 to %"struct.std::_Vector_base"*
  %i75 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %i74, i32 0, i32 0
  %i76 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %i75 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %i77 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %i76, i32 0, i32 1
  store i32* %i73, i32** %i77, align 8
  %i78 = load i32*, i32** %i10, align 8
  %i79 = load i64, i64* %i5, align 8
  %i80 = getelementptr inbounds i32, i32* %i78, i64 %i79
  %i81 = bitcast %"class.std::vector"* %i13 to %"struct.std::_Vector_base"*
  %i82 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %i81, i32 0, i32 0
  %i83 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %i82 to %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"*
  %i84 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data"* %i83, i32 0, i32 2
  store i32* %i80, i32** %i84, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(%"class.__gnu_cxx::new_allocator"* %arg, i32* %arg1, i32* nonnull align 4 dereferenceable(4) %arg2) #1 comdat align 2 {
bb:
  %i = alloca %"class.__gnu_cxx::new_allocator"*, align 8
  %i3 = alloca i32*, align 8
  %i4 = alloca i32*, align 8
  store %"class.__gnu_cxx::new_allocator"* %arg, %"class.__gnu_cxx::new_allocator"** %i, align 8
  store i32* %arg1, i32** %i3, align 8
  store i32* %arg2, i32** %i4, align 8
  %i5 = load %"class.__gnu_cxx::new_allocator"*, %"class.__gnu_cxx::new_allocator"** %i, align 8
  %i6 = load i32*, i32** %i3, align 8
  %i7 = bitcast i32* %i6 to i8*
  %i8 = bitcast i8* %i7 to i32*
  %i9 = load i32*, i32** %i4, align 8
  %i10 = call nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* nonnull align 4 dereferenceable(4) %i9) #9
  %i11 = load i32, i32* %i10, align 4
  store i32 %i11, i32* %i8, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIRKiEOT_RNSt16remove_referenceIS2_E4typeE(i32* nonnull align 4 dereferenceable(4) %arg) #1 comdat {
bb:
  %i = alloca i32*, align 8
  store i32* %arg, i32** %i, align 8
  %i1 = load i32*, i32** %i, align 8
  ret i32* %i1
}

attributes #0 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn writeonly }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline noreturn nounwind }
attributes #6 = { argmemonly nounwind willreturn }
attributes #7 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { builtin allocsize(0) }
attributes #9 = { nounwind }
attributes #10 = { noreturn }
attributes #11 = { noreturn nounwind }
attributes #12 = { allocsize(0) }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"}
