; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.35.32217"

$sprintf = comdat any

$vsprintf = comdat any

$_snprintf = comdat any

$_vsnprintf = comdat any

$printf = comdat any

$scanf_s = comdat any

$_vsprintf_l = comdat any

$_vsnprintf_l = comdat any

$__local_stdio_printf_options = comdat any

$_vfprintf_l = comdat any

$_vfscanf_s_l = comdat any

$__local_stdio_scanf_options = comdat any

$"??_C@_0BE@FADLMOPK@Enter?5two?5numbers?3?5?$AA@" = comdat any

$"??_C@_05OKMLJOMC@?$CFd?5?$CFd?$AA@" = comdat any

$"??_C@_0O@FDJKEPMC@?$CFd?5?$CL?5?$CFd?5?$DN?5?$CFd?6?$AA@" = comdat any

$"??_C@_0O@LLCPIFIB@?$CFd?5?9?5?$CFd?5?$DN?5?$CFd?6?$AA@" = comdat any

$"??_C@_0O@JCBEJAAC@?$CFd?5?$CK?5?$CFd?5?$DN?5?$CFd?6?$AA@" = comdat any

$"??_C@_0O@ODEDDMEA@?$CFd?5?1?5?$CFd?5?$DN?5?$CFd?6?$AA@" = comdat any

@"??_C@_0BE@FADLMOPK@Enter?5two?5numbers?3?5?$AA@" = linkonce_odr dso_local unnamed_addr constant [20 x i8] c"Enter two numbers: \00", comdat, align 1
@"??_C@_05OKMLJOMC@?$CFd?5?$CFd?$AA@" = linkonce_odr dso_local unnamed_addr constant [6 x i8] c"%d %d\00", comdat, align 1
@"??_C@_0O@FDJKEPMC@?$CFd?5?$CL?5?$CFd?5?$DN?5?$CFd?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"%d + %d = %d\0A\00", comdat, align 1
@"??_C@_0O@LLCPIFIB@?$CFd?5?9?5?$CFd?5?$DN?5?$CFd?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"%d - %d = %d\0A\00", comdat, align 1
@"??_C@_0O@JCBEJAAC@?$CFd?5?$CK?5?$CFd?5?$DN?5?$CFd?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"%d * %d = %d\0A\00", comdat, align 1
@"??_C@_0O@ODEDDMEA@?$CFd?5?1?5?$CFd?5?$DN?5?$CFd?6?$AA@" = linkonce_odr dso_local unnamed_addr constant [14 x i8] c"%d / %d = %d\0A\00", comdat, align 1
@__local_stdio_printf_options._OptionsStorage = internal global i64 0, align 8
@__local_stdio_scanf_options._OptionsStorage = internal global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @sprintf(ptr noundef %0, ptr noundef %1, ...) #0 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.va_start(ptr %6)
  %7 = load ptr, ptr %6, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = call i32 @_vsprintf_l(ptr noundef %9, ptr noundef %8, ptr noundef null, ptr noundef %7)
  store i32 %10, ptr %5, align 4
  call void @llvm.va_end(ptr %6)
  %11 = load i32, ptr %5, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @vsprintf(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = call i32 @_vsnprintf_l(ptr noundef %9, i64 noundef -1, ptr noundef %8, ptr noundef null, ptr noundef %7)
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef %2, ...) #0 comdat {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.va_start(ptr %8)
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = load i64, ptr %5, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = call i32 @_vsnprintf(ptr noundef %12, i64 noundef %11, ptr noundef %10, ptr noundef %9)
  store i32 %13, ptr %7, align 4
  call void @llvm.va_end(ptr %8)
  %14 = load i32, ptr %7, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_vsnprintf(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) #0 comdat {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr %3, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store i64 %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load i64, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call i32 @_vsnprintf_l(ptr noundef %12, i64 noundef %11, ptr noundef %10, ptr noundef null, ptr noundef %9)
  ret i32 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, ptr %1, align 4
  %4 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0BE@FADLMOPK@Enter?5two?5numbers?3?5?$AA@")
  %5 = call i32 (ptr, ...) @scanf_s(ptr noundef @"??_C@_05OKMLJOMC@?$CFd?5?$CFd?$AA@", ptr noundef %2, ptr noundef %3)
  %6 = load i32, ptr %3, align 4
  %7 = load i32, ptr %2, align 4
  %8 = call i32 @topla(i32 noundef %7, i32 noundef %6)
  %9 = load i32, ptr %3, align 4
  %10 = load i32, ptr %2, align 4
  %11 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@FDJKEPMC@?$CFd?5?$CL?5?$CFd?5?$DN?5?$CFd?6?$AA@", i32 noundef %10, i32 noundef %9, i32 noundef %8)
  %12 = load i32, ptr %3, align 4
  %13 = load i32, ptr %2, align 4
  %14 = call i32 @cikar(i32 noundef %13, i32 noundef %12)
  %15 = load i32, ptr %3, align 4
  %16 = load i32, ptr %2, align 4
  %17 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@LLCPIFIB@?$CFd?5?9?5?$CFd?5?$DN?5?$CFd?6?$AA@", i32 noundef %16, i32 noundef %15, i32 noundef %14)
  %18 = load i32, ptr %3, align 4
  %19 = load i32, ptr %2, align 4
  %20 = call i32 @carp(i32 noundef %19, i32 noundef %18)
  %21 = load i32, ptr %3, align 4
  %22 = load i32, ptr %2, align 4
  %23 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@JCBEJAAC@?$CFd?5?$CK?5?$CFd?5?$DN?5?$CFd?6?$AA@", i32 noundef %22, i32 noundef %21, i32 noundef %20)
  %24 = load i32, ptr %3, align 4
  %25 = load i32, ptr %2, align 4
  %26 = call i32 @bol(i32 noundef %25, i32 noundef %24)
  %27 = load i32, ptr %3, align 4
  %28 = load i32, ptr %2, align 4
  %29 = call i32 (ptr, ...) @printf(ptr noundef @"??_C@_0O@ODEDDMEA@?$CFd?5?1?5?$CFd?5?$DN?5?$CFd?6?$AA@", i32 noundef %28, i32 noundef %27, i32 noundef %26)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @printf(ptr noundef %0, ...) #0 comdat {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.va_start(ptr %4)
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = call ptr @__acrt_iob_func(i32 noundef 1)
  %8 = call i32 @_vfprintf_l(ptr noundef %7, ptr noundef %6, ptr noundef null, ptr noundef %5)
  store i32 %8, ptr %3, align 4
  call void @llvm.va_end(ptr %4)
  %9 = load i32, ptr %3, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @scanf_s(ptr noundef %0, ...) #0 comdat {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.va_start(ptr %4)
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = call ptr @__acrt_iob_func(i32 noundef 0)
  %8 = call i32 @_vfscanf_s_l(ptr noundef %7, ptr noundef %6, ptr noundef null, ptr noundef %5)
  store i32 %8, ptr %3, align 4
  call void @llvm.va_end(ptr %4)
  %9 = load i32, ptr %3, align 4
  ret i32 %9
}

declare dso_local i32 @topla(i32 noundef, i32 noundef) #1

declare dso_local i32 @cikar(i32 noundef, i32 noundef) #1

declare dso_local i32 @carp(i32 noundef, i32 noundef) #1

declare dso_local i32 @bol(i32 noundef, i32 noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_vsprintf_l(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 comdat {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %3, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call i32 @_vsnprintf_l(ptr noundef %12, i64 noundef -1, ptr noundef %11, ptr noundef %10, ptr noundef %9)
  ret i32 %13
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_vsnprintf_l(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 comdat {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  store ptr %4, ptr %6, align 8
  store ptr %3, ptr %7, align 8
  store ptr %2, ptr %8, align 8
  store i64 %1, ptr %9, align 8
  store ptr %0, ptr %10, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = load ptr, ptr %7, align 8
  %14 = load ptr, ptr %8, align 8
  %15 = load i64, ptr %9, align 8
  %16 = load ptr, ptr %10, align 8
  %17 = call ptr @__local_stdio_printf_options()
  %18 = load i64, ptr %17, align 8
  %19 = or i64 %18, 1
  %20 = call i32 @__stdio_common_vsprintf(i64 noundef %19, ptr noundef %16, i64 noundef %15, ptr noundef %14, ptr noundef %13, ptr noundef %12)
  store i32 %20, ptr %11, align 4
  %21 = load i32, ptr %11, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  br label %26

24:                                               ; preds = %5
  %25 = load i32, ptr %11, align 4
  br label %26

26:                                               ; preds = %24, %23
  %27 = phi i32 [ -1, %23 ], [ %25, %24 ]
  ret i32 %27
}

declare dso_local i32 @__stdio_common_vsprintf(i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local ptr @__local_stdio_printf_options() #0 comdat {
  ret ptr @__local_stdio_printf_options._OptionsStorage
}

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_vfprintf_l(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 comdat {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %3, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call ptr @__local_stdio_printf_options()
  %14 = load i64, ptr %13, align 8
  %15 = call i32 @__stdio_common_vfprintf(i64 noundef %14, ptr noundef %12, ptr noundef %11, ptr noundef %10, ptr noundef %9)
  ret i32 %15
}

declare dso_local ptr @__acrt_iob_func(i32 noundef) #1

declare dso_local i32 @__stdio_common_vfprintf(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local i32 @_vfscanf_s_l(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 comdat {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %3, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store ptr %0, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load ptr, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call ptr @__local_stdio_scanf_options()
  %14 = load i64, ptr %13, align 8
  %15 = or i64 %14, 1
  %16 = call i32 @__stdio_common_vfscanf(i64 noundef %15, ptr noundef %12, ptr noundef %11, ptr noundef %10, ptr noundef %9)
  ret i32 %16
}

declare dso_local i32 @__stdio_common_vfscanf(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define linkonce_odr dso_local ptr @__local_stdio_scanf_options() #0 comdat {
  ret ptr @__local_stdio_scanf_options._OptionsStorage
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"clang version 15.0.7"}
