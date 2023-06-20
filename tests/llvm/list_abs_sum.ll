; ModuleID = 'list_abs_sum.ll'
source_filename = "list_abs_sum.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.list = type { %"class.std::vector" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { i32*, i32*, i32* }

$_Z10listLengthIiEiP4listIT_E = comdat any

$_Z7listGetIiET_P4listIS0_Ei = comdat any

$_ZNKSt6vectorIiSaIiEE4sizeEv = comdat any

$_ZNSt6vectorIiSaIiEEixEm = comdat any

; Function Attrs: noinline optnone uwtable
define dso_local i32 @test(%struct.list* %arg) #0 {
bb:
  %i = alloca %struct.list*, align 8
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %i3 = alloca i32, align 4
  store %struct.list* %arg, %struct.list** %i, align 8
  store i32 0, i32* %i1, align 4
  store i32 0, i32* %i2, align 4
  br label %bb4

bb4:                                              ; preds = %bb25, %bb
  %i5 = load i32, i32* %i2, align 4
  %i6 = load %struct.list*, %struct.list** %i, align 8
  %i7 = call i32 @_Z10listLengthIiEiP4listIT_E(%struct.list* %i6)
  %i8 = icmp slt i32 %i5, %i7
  br i1 %i8, label %bb9, label %bb28

bb9:                                              ; preds = %bb4
  %i10 = load %struct.list*, %struct.list** %i, align 8
  %i11 = load i32, i32* %i2, align 4
  %i12 = call i32 @_Z7listGetIiET_P4listIS0_Ei(%struct.list* %i10, i32 %i11)
  store i32 %i12, i32* %i3, align 4
  %i13 = load i32, i32* %i3, align 4
  %i14 = icmp slt i32 %i13, 0
  br i1 %i14, label %bb15, label %bb20

bb15:                                             ; preds = %bb9
  %i16 = load i32, i32* %i3, align 4
  %i17 = sub nsw i32 0, %i16
  %i18 = load i32, i32* %i1, align 4
  %i19 = add nsw i32 %i18, %i17
  store i32 %i19, i32* %i1, align 4
  br label %bb24

bb20:                                             ; preds = %bb9
  %i21 = load i32, i32* %i3, align 4
  %i22 = load i32, i32* %i1, align 4
  %i23 = add nsw i32 %i22, %i21
  store i32 %i23, i32* %i1, align 4
  br label %bb24

bb24:                                             ; preds = %bb20, %bb15
  br label %bb25

bb25:                                             ; preds = %bb24
  %i26 = load i32, i32* %i2, align 4
  %i27 = add nsw i32 %i26, 1
  store i32 %i27, i32* %i2, align 4
  br label %bb4

bb28:                                             ; preds = %bb4
  %i29 = load i32, i32* %i1, align 4
  ret i32 %i29
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_Z10listLengthIiEiP4listIT_E(%struct.list* %arg) #1 comdat {
bb:
  %i = alloca %struct.list*, align 8
  store %struct.list* %arg, %struct.list** %i, align 8
  %i1 = load %struct.list*, %struct.list** %i, align 8
  %i2 = getelementptr inbounds %struct.list, %struct.list* %i1, i32 0, i32 0
  %i3 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector"* %i2) #2
  %i4 = trunc i64 %i3 to i32
  ret i32 %i4
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
  %i7 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector"* %i4, i64 %i6) #2
  %i8 = load i32, i32* %i7, align 4
  ret i32 %i8
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

attributes #0 = { noinline optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"Ubuntu clang version 11.0.0-2~ubuntu20.04.1"}
