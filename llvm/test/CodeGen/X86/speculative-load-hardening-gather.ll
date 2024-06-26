; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -mtriple=x86_64-unknown-linux-gnu | FileCheck %s

declare <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float>, ptr, <4 x i32>, <4 x float>, i8)

define <4 x float> @test_llvm_x86_avx2_gather_d_ps(ptr %b, <4 x i32> %iv, <4 x float> %mask) #0 {
; CHECK-LABEL: test_llvm_x86_avx2_gather_d_ps:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    vxorps %xmm2, %xmm2, %xmm2
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vmovq %rax, %xmm3
; CHECK-NEXT:    vpbroadcastq %xmm3, %xmm3
; CHECK-NEXT:    vpor %xmm0, %xmm3, %xmm0
; CHECK-NEXT:    vgatherdps %xmm1, (%rdi,%xmm0), %xmm2
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovaps %xmm2, %xmm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    retq
entry:
  %v = call <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float> zeroinitializer, ptr %b, <4 x i32> %iv, <4 x float> %mask, i8 1)
  ret <4 x float> %v
}

declare <4 x float> @llvm.x86.avx2.gather.q.ps(<4 x float>, ptr, <2 x i64>, <4 x float>, i8)

define <4 x float> @test_llvm_x86_avx2_gather_q_ps(ptr %b, <2 x i64> %iv, <4 x float> %mask) #0 {
; CHECK-LABEL: test_llvm_x86_avx2_gather_q_ps:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    vxorps %xmm2, %xmm2, %xmm2
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vmovq %rax, %xmm3
; CHECK-NEXT:    vpbroadcastq %xmm3, %xmm3
; CHECK-NEXT:    vpor %xmm0, %xmm3, %xmm0
; CHECK-NEXT:    vgatherqps %xmm1, (%rdi,%xmm0), %xmm2
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovaps %xmm2, %xmm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    retq
entry:
  %v = call <4 x float> @llvm.x86.avx2.gather.q.ps(<4 x float> zeroinitializer, ptr %b, <2 x i64> %iv, <4 x float> %mask, i8 1)
  ret <4 x float> %v
}

declare <2 x double> @llvm.x86.avx2.gather.d.pd(<2 x double>, ptr, <4 x i32>, <2 x double>, i8)

define <2 x double> @test_llvm_x86_avx2_gather_d_pd(ptr %b, <4 x i32> %iv, <2 x double> %mask) #0 {
; CHECK-LABEL: test_llvm_x86_avx2_gather_d_pd:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    vxorpd %xmm2, %xmm2, %xmm2
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vmovq %rax, %xmm3
; CHECK-NEXT:    vpbroadcastq %xmm3, %xmm3
; CHECK-NEXT:    vpor %xmm0, %xmm3, %xmm0
; CHECK-NEXT:    vgatherdpd %xmm1, (%rdi,%xmm0), %xmm2
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovapd %xmm2, %xmm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    retq
entry:
  %v = call <2 x double> @llvm.x86.avx2.gather.d.pd(<2 x double> zeroinitializer, ptr %b, <4 x i32> %iv, <2 x double> %mask, i8 1)
  ret <2 x double> %v
}

declare <2 x double> @llvm.x86.avx2.gather.q.pd(<2 x double>, ptr, <2 x i64>, <2 x double>, i8)

define <2 x double> @test_llvm_x86_avx2_gather_q_pd(ptr %b, <2 x i64> %iv, <2 x double> %mask) #0 {
; CHECK-LABEL: test_llvm_x86_avx2_gather_q_pd:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    vxorpd %xmm2, %xmm2, %xmm2
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vmovq %rax, %xmm3
; CHECK-NEXT:    vpbroadcastq %xmm3, %xmm3
; CHECK-NEXT:    vpor %xmm0, %xmm3, %xmm0
; CHECK-NEXT:    vgatherqpd %xmm1, (%rdi,%xmm0), %xmm2
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovapd %xmm2, %xmm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    retq
entry:
  %v = call <2 x double> @llvm.x86.avx2.gather.q.pd(<2 x double> zeroinitializer, ptr %b, <2 x i64> %iv, <2 x double> %mask, i8 1)
  ret <2 x double> %v
}

declare <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float>, ptr, <8 x i32>, <8 x float>, i8)

define <8 x float> @test_llvm_x86_avx2_gather_d_ps_256(ptr %b, <8 x i32> %iv, <8 x float> %mask) #0 {
; CHECK-LABEL: test_llvm_x86_avx2_gather_d_ps_256:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    vxorps %xmm2, %xmm2, %xmm2
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vmovq %rax, %xmm3
; CHECK-NEXT:    vpbroadcastq %xmm3, %ymm3
; CHECK-NEXT:    vpor %ymm0, %ymm3, %ymm0
; CHECK-NEXT:    vgatherdps %ymm1, (%rdi,%ymm0), %ymm2
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovaps %ymm2, %ymm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    retq
entry:
  %v = call <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float> zeroinitializer, ptr %b, <8 x i32> %iv, <8 x float> %mask, i8 1)
  ret <8 x float> %v
}

declare <4 x float> @llvm.x86.avx2.gather.q.ps.256(<4 x float>, ptr, <4 x i64>, <4 x float>, i8)

define <4 x float> @test_llvm_x86_avx2_gather_q_ps_256(ptr %b, <4 x i64> %iv, <4 x float> %mask) #0 {
; CHECK-LABEL: test_llvm_x86_avx2_gather_q_ps_256:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    vxorps %xmm2, %xmm2, %xmm2
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vmovq %rax, %xmm3
; CHECK-NEXT:    vpbroadcastq %xmm3, %ymm3
; CHECK-NEXT:    vpor %ymm0, %ymm3, %ymm0
; CHECK-NEXT:    vgatherqps %xmm1, (%rdi,%ymm0), %xmm2
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovaps %xmm2, %xmm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    vzeroupper
; CHECK-NEXT:    retq
entry:
  %v = call <4 x float> @llvm.x86.avx2.gather.q.ps.256(<4 x float> zeroinitializer, ptr %b, <4 x i64> %iv, <4 x float> %mask, i8 1)
  ret <4 x float> %v
}

declare <4 x double> @llvm.x86.avx2.gather.d.pd.256(<4 x double>, ptr, <4 x i32>, <4 x double>, i8)

define <4 x double> @test_llvm_x86_avx2_gather_d_pd_256(ptr %b, <4 x i32> %iv, <4 x double> %mask) #0 {
; CHECK-LABEL: test_llvm_x86_avx2_gather_d_pd_256:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    vxorpd %xmm2, %xmm2, %xmm2
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vmovq %rax, %xmm3
; CHECK-NEXT:    vpbroadcastq %xmm3, %xmm3
; CHECK-NEXT:    vpor %xmm0, %xmm3, %xmm0
; CHECK-NEXT:    vgatherdpd %ymm1, (%rdi,%xmm0), %ymm2
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovapd %ymm2, %ymm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    retq
entry:
  %v = call <4 x double> @llvm.x86.avx2.gather.d.pd.256(<4 x double> zeroinitializer, ptr %b, <4 x i32> %iv, <4 x double> %mask, i8 1)
  ret <4 x double> %v
}

declare <4 x double> @llvm.x86.avx2.gather.q.pd.256(<4 x double>, ptr, <4 x i64>, <4 x double>, i8)

define <4 x double> @test_llvm_x86_avx2_gather_q_pd_256(ptr %b, <4 x i64> %iv, <4 x double> %mask) #0 {
; CHECK-LABEL: test_llvm_x86_avx2_gather_q_pd_256:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    vxorpd %xmm2, %xmm2, %xmm2
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vmovq %rax, %xmm3
; CHECK-NEXT:    vpbroadcastq %xmm3, %ymm3
; CHECK-NEXT:    vpor %ymm0, %ymm3, %ymm0
; CHECK-NEXT:    vgatherqpd %ymm1, (%rdi,%ymm0), %ymm2
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovapd %ymm2, %ymm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    retq
entry:
  %v = call <4 x double> @llvm.x86.avx2.gather.q.pd.256(<4 x double> zeroinitializer, ptr %b, <4 x i64> %iv, <4 x double> %mask, i8 1)
  ret <4 x double> %v
}

declare <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32>, ptr, <4 x i32>, <4 x i32>, i8)

define <4 x i32> @test_llvm_x86_avx2_gather_d_d(ptr %b, <4 x i32> %iv, <4 x i32> %mask) #0 {
; CHECK-LABEL: test_llvm_x86_avx2_gather_d_d:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    vpxor %xmm2, %xmm2, %xmm2
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vmovq %rax, %xmm3
; CHECK-NEXT:    vpbroadcastq %xmm3, %xmm3
; CHECK-NEXT:    vpor %xmm0, %xmm3, %xmm0
; CHECK-NEXT:    vpgatherdd %xmm1, (%rdi,%xmm0), %xmm2
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovdqa %xmm2, %xmm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    retq
entry:
  %v = call <4 x i32> @llvm.x86.avx2.gather.d.d(<4 x i32> zeroinitializer, ptr %b, <4 x i32> %iv, <4 x i32> %mask, i8 1)
  ret <4 x i32> %v
}

declare <4 x i32> @llvm.x86.avx2.gather.q.d(<4 x i32>, ptr, <2 x i64>, <4 x i32>, i8)

define <4 x i32> @test_llvm_x86_avx2_gather_q_d(ptr %b, <2 x i64> %iv, <4 x i32> %mask) #0 {
; CHECK-LABEL: test_llvm_x86_avx2_gather_q_d:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    vpxor %xmm2, %xmm2, %xmm2
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vmovq %rax, %xmm3
; CHECK-NEXT:    vpbroadcastq %xmm3, %xmm3
; CHECK-NEXT:    vpor %xmm0, %xmm3, %xmm0
; CHECK-NEXT:    vpgatherqd %xmm1, (%rdi,%xmm0), %xmm2
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovdqa %xmm2, %xmm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    retq
entry:
  %v = call <4 x i32> @llvm.x86.avx2.gather.q.d(<4 x i32> zeroinitializer, ptr %b, <2 x i64> %iv, <4 x i32> %mask, i8 1)
  ret <4 x i32> %v
}

declare <2 x i64> @llvm.x86.avx2.gather.d.q(<2 x i64>, ptr, <4 x i32>, <2 x i64>, i8)

define <2 x i64> @test_llvm_x86_avx2_gather_d_q(ptr %b, <4 x i32> %iv, <2 x i64> %mask) #0 {
; CHECK-LABEL: test_llvm_x86_avx2_gather_d_q:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    vpxor %xmm2, %xmm2, %xmm2
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vmovq %rax, %xmm3
; CHECK-NEXT:    vpbroadcastq %xmm3, %xmm3
; CHECK-NEXT:    vpor %xmm0, %xmm3, %xmm0
; CHECK-NEXT:    vpgatherdq %xmm1, (%rdi,%xmm0), %xmm2
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovdqa %xmm2, %xmm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    retq
entry:
  %v = call <2 x i64> @llvm.x86.avx2.gather.d.q(<2 x i64> zeroinitializer, ptr %b, <4 x i32> %iv, <2 x i64> %mask, i8 1)
  ret <2 x i64> %v
}

declare <2 x i64> @llvm.x86.avx2.gather.q.q(<2 x i64>, ptr, <2 x i64>, <2 x i64>, i8)

define <2 x i64> @test_llvm_x86_avx2_gather_q_q(ptr %b, <2 x i64> %iv, <2 x i64> %mask) #0 {
; CHECK-LABEL: test_llvm_x86_avx2_gather_q_q:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    vpxor %xmm2, %xmm2, %xmm2
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vmovq %rax, %xmm3
; CHECK-NEXT:    vpbroadcastq %xmm3, %xmm3
; CHECK-NEXT:    vpor %xmm0, %xmm3, %xmm0
; CHECK-NEXT:    vpgatherqq %xmm1, (%rdi,%xmm0), %xmm2
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovdqa %xmm2, %xmm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    retq
entry:
  %v = call <2 x i64> @llvm.x86.avx2.gather.q.q(<2 x i64> zeroinitializer, ptr %b, <2 x i64> %iv, <2 x i64> %mask, i8 1)
  ret <2 x i64> %v
}

declare <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32>, ptr, <8 x i32>, <8 x i32>, i8)

define <8 x i32> @test_llvm_x86_avx2_gather_d_d_256(ptr %b, <8 x i32> %iv, <8 x i32> %mask) #0 {
; CHECK-LABEL: test_llvm_x86_avx2_gather_d_d_256:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    vpxor %xmm2, %xmm2, %xmm2
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vmovq %rax, %xmm3
; CHECK-NEXT:    vpbroadcastq %xmm3, %ymm3
; CHECK-NEXT:    vpor %ymm0, %ymm3, %ymm0
; CHECK-NEXT:    vpgatherdd %ymm1, (%rdi,%ymm0), %ymm2
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovdqa %ymm2, %ymm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    retq
entry:
  %v = call <8 x i32> @llvm.x86.avx2.gather.d.d.256(<8 x i32> zeroinitializer, ptr %b, <8 x i32> %iv, <8 x i32> %mask, i8 1)
  ret <8 x i32> %v
}

declare <4 x i32> @llvm.x86.avx2.gather.q.d.256(<4 x i32>, ptr, <4 x i64>, <4 x i32>, i8)

define <4 x i32> @test_llvm_x86_avx2_gather_q_d_256(ptr %b, <4 x i64> %iv, <4 x i32> %mask) #0 {
; CHECK-LABEL: test_llvm_x86_avx2_gather_q_d_256:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    vpxor %xmm2, %xmm2, %xmm2
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vmovq %rax, %xmm3
; CHECK-NEXT:    vpbroadcastq %xmm3, %ymm3
; CHECK-NEXT:    vpor %ymm0, %ymm3, %ymm0
; CHECK-NEXT:    vpgatherqd %xmm1, (%rdi,%ymm0), %xmm2
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovdqa %xmm2, %xmm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    vzeroupper
; CHECK-NEXT:    retq
entry:
  %v = call <4 x i32> @llvm.x86.avx2.gather.q.d.256(<4 x i32> zeroinitializer, ptr %b, <4 x i64> %iv, <4 x i32> %mask, i8 1)
  ret <4 x i32> %v
}

declare <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64>, ptr, <4 x i32>, <4 x i64>, i8)

define <4 x i64> @test_llvm_x86_avx2_gather_d_q_256(ptr %b, <4 x i32> %iv, <4 x i64> %mask) #0 {
; CHECK-LABEL: test_llvm_x86_avx2_gather_d_q_256:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    vpxor %xmm2, %xmm2, %xmm2
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vmovq %rax, %xmm3
; CHECK-NEXT:    vpbroadcastq %xmm3, %xmm3
; CHECK-NEXT:    vpor %xmm0, %xmm3, %xmm0
; CHECK-NEXT:    vpgatherdq %ymm1, (%rdi,%xmm0), %ymm2
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovdqa %ymm2, %ymm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    retq
entry:
  %v = call <4 x i64> @llvm.x86.avx2.gather.d.q.256(<4 x i64> zeroinitializer, ptr %b, <4 x i32> %iv, <4 x i64> %mask, i8 1)
  ret <4 x i64> %v
}

declare <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64>, ptr, <4 x i64>, <4 x i64>, i8)

define <4 x i64> @test_llvm_x86_avx2_gather_q_q_256(ptr %b, <4 x i64> %iv, <4 x i64> %mask) #0 {
; CHECK-LABEL: test_llvm_x86_avx2_gather_q_q_256:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    vpxor %xmm2, %xmm2, %xmm2
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vmovq %rax, %xmm3
; CHECK-NEXT:    vpbroadcastq %xmm3, %ymm3
; CHECK-NEXT:    vpor %ymm0, %ymm3, %ymm0
; CHECK-NEXT:    vpgatherqq %ymm1, (%rdi,%ymm0), %ymm2
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovdqa %ymm2, %ymm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    retq
entry:
  %v = call <4 x i64> @llvm.x86.avx2.gather.q.q.256(<4 x i64> zeroinitializer, ptr %b, <4 x i64> %iv, <4 x i64> %mask, i8 1)
  ret <4 x i64> %v
}

declare <16 x float> @llvm.x86.avx512.gather.dps.512(<16 x float>, ptr, <16 x i32>, i16, i32)

define <16 x float> @test_llvm_x86_avx512_gather_dps_512(ptr %b, <16 x i32> %iv) #1 {
; CHECK-LABEL: test_llvm_x86_avx512_gather_dps_512:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    kxnorw %k0, %k0, %k1
; CHECK-NEXT:    vxorps %xmm1, %xmm1, %xmm1
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vpbroadcastq %rax, %zmm2
; CHECK-NEXT:    vporq %zmm0, %zmm2, %zmm0
; CHECK-NEXT:    vgatherdps (%rdi,%zmm0), %zmm1 {%k1}
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovaps %zmm1, %zmm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    retq
entry:
  %v = call <16 x float> @llvm.x86.avx512.gather.dps.512(<16 x float> zeroinitializer, ptr %b, <16 x i32> %iv, i16 -1, i32 1)
  ret <16 x float> %v
}

declare <8 x double> @llvm.x86.avx512.gather.dpd.512(<8 x double>, ptr, <8 x i32>, i8, i32)

define <8 x double> @test_llvm_x86_avx512_gather_dpd_512(ptr %b, <8 x i32> %iv) #1 {
; CHECK-LABEL: test_llvm_x86_avx512_gather_dpd_512:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    kxnorw %k0, %k0, %k1
; CHECK-NEXT:    vxorpd %xmm1, %xmm1, %xmm1
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vmovq %rax, %xmm2
; CHECK-NEXT:    vpbroadcastq %xmm2, %ymm2
; CHECK-NEXT:    vpor %ymm0, %ymm2, %ymm0
; CHECK-NEXT:    vgatherdpd (%rdi,%ymm0), %zmm1 {%k1}
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovapd %zmm1, %zmm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    retq
entry:
  %v = call <8 x double> @llvm.x86.avx512.gather.dpd.512(<8 x double> zeroinitializer, ptr %b, <8 x i32> %iv, i8 -1, i32 1)
  ret <8 x double> %v
}

declare <8 x float> @llvm.x86.avx512.gather.qps.512(<8 x float>, ptr, <8 x i64>, i8, i32)

define <8 x float> @test_llvm_x86_avx512_gather_qps_512(ptr %b, <8 x i64> %iv) #1 {
; CHECK-LABEL: test_llvm_x86_avx512_gather_qps_512:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    kxnorw %k0, %k0, %k1
; CHECK-NEXT:    vxorps %xmm1, %xmm1, %xmm1
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vpbroadcastq %rax, %zmm2
; CHECK-NEXT:    vporq %zmm0, %zmm2, %zmm0
; CHECK-NEXT:    vgatherqps (%rdi,%zmm0), %ymm1 {%k1}
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovaps %ymm1, %ymm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    retq
entry:
  %v = call <8 x float> @llvm.x86.avx512.gather.qps.512(<8 x float> zeroinitializer, ptr %b, <8 x i64> %iv, i8 -1, i32 1)
  ret <8 x float> %v
}

declare <8 x double> @llvm.x86.avx512.gather.qpd.512(<8 x double>, ptr, <8 x i64>, i8, i32)

define <8 x double> @test_llvm_x86_avx512_gather_qpd_512(ptr %b, <8 x i64> %iv) #1 {
; CHECK-LABEL: test_llvm_x86_avx512_gather_qpd_512:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    kxnorw %k0, %k0, %k1
; CHECK-NEXT:    vxorpd %xmm1, %xmm1, %xmm1
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vpbroadcastq %rax, %zmm2
; CHECK-NEXT:    vporq %zmm0, %zmm2, %zmm0
; CHECK-NEXT:    vgatherqpd (%rdi,%zmm0), %zmm1 {%k1}
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovapd %zmm1, %zmm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    retq
entry:
  %v = call <8 x double> @llvm.x86.avx512.gather.qpd.512(<8 x double> zeroinitializer, ptr %b, <8 x i64> %iv, i8 -1, i32 1)
  ret <8 x double> %v
}

declare <16 x i32> @llvm.x86.avx512.gather.dpi.512(<16 x i32>, ptr, <16 x i32>, i16, i32)

define <16 x i32> @test_llvm_x86_avx512_gather_dpi_512(ptr %b, <16 x i32> %iv) #1 {
; CHECK-LABEL: test_llvm_x86_avx512_gather_dpi_512:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    kxnorw %k0, %k0, %k1
; CHECK-NEXT:    vpxor %xmm1, %xmm1, %xmm1
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vpbroadcastq %rax, %zmm2
; CHECK-NEXT:    vporq %zmm0, %zmm2, %zmm0
; CHECK-NEXT:    vpgatherdd (%rdi,%zmm0), %zmm1 {%k1}
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovdqa64 %zmm1, %zmm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    retq
entry:
  %v = call <16 x i32> @llvm.x86.avx512.gather.dpi.512(<16 x i32> zeroinitializer, ptr %b, <16 x i32> %iv, i16 -1, i32 1)
  ret <16 x i32> %v
}

declare <8 x i64> @llvm.x86.avx512.gather.dpq.512(<8 x i64>, ptr, <8 x i32>, i8, i32)

define <8 x i64> @test_llvm_x86_avx512_gather_dpq_512(ptr %b, <8 x i32> %iv) #1 {
; CHECK-LABEL: test_llvm_x86_avx512_gather_dpq_512:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    kxnorw %k0, %k0, %k1
; CHECK-NEXT:    vpxor %xmm1, %xmm1, %xmm1
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vmovq %rax, %xmm2
; CHECK-NEXT:    vpbroadcastq %xmm2, %ymm2
; CHECK-NEXT:    vpor %ymm0, %ymm2, %ymm0
; CHECK-NEXT:    vpgatherdq (%rdi,%ymm0), %zmm1 {%k1}
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovdqa64 %zmm1, %zmm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    retq
entry:
  %v = call <8 x i64> @llvm.x86.avx512.gather.dpq.512(<8 x i64> zeroinitializer, ptr %b, <8 x i32> %iv, i8 -1, i32 1)
  ret <8 x i64> %v
}


declare <8 x i32> @llvm.x86.avx512.gather.qpi.512(<8 x i32>, ptr, <8 x i64>, i8, i32)

define <8 x i32> @test_llvm_x86_avx512_gather_qpi_512(ptr %b, <8 x i64> %iv) #1 {
; CHECK-LABEL: test_llvm_x86_avx512_gather_qpi_512:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    kxnorw %k0, %k0, %k1
; CHECK-NEXT:    vpxor %xmm1, %xmm1, %xmm1
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vpbroadcastq %rax, %zmm2
; CHECK-NEXT:    vporq %zmm0, %zmm2, %zmm0
; CHECK-NEXT:    vpgatherqd (%rdi,%zmm0), %ymm1 {%k1}
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovdqa %ymm1, %ymm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    retq
entry:
  %v = call <8 x i32> @llvm.x86.avx512.gather.qpi.512(<8 x i32> zeroinitializer, ptr %b, <8 x i64> %iv, i8 -1, i32 1)
  ret <8 x i32> %v
}

declare <8 x i64> @llvm.x86.avx512.gather.qpq.512(<8 x i64>, ptr, <8 x i64>, i8, i32)

define <8 x i64> @test_llvm_x86_avx512_gather_qpq_512(ptr %b, <8 x i64> %iv) #1 {
; CHECK-LABEL: test_llvm_x86_avx512_gather_qpq_512:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    kxnorw %k0, %k0, %k1
; CHECK-NEXT:    vpxor %xmm1, %xmm1, %xmm1
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vpbroadcastq %rax, %zmm2
; CHECK-NEXT:    vporq %zmm0, %zmm2, %zmm0
; CHECK-NEXT:    vpgatherqq (%rdi,%zmm0), %zmm1 {%k1}
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovdqa64 %zmm1, %zmm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    retq
entry:
  %v = call <8 x i64> @llvm.x86.avx512.gather.qpq.512(<8 x i64> zeroinitializer, ptr %b, <8 x i64> %iv, i8 -1, i32 1)
  ret <8 x i64> %v
}

declare <4 x float> @llvm.x86.avx512.gather3siv4.sf(<4 x float>, ptr, <4 x i32>, i8, i32)

define <4 x float> @test_llvm_x86_avx512_gather3siv4_sf(ptr %b, <4 x i32> %iv) #2 {
; CHECK-LABEL: test_llvm_x86_avx512_gather3siv4_sf:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    kxnorw %k0, %k0, %k1
; CHECK-NEXT:    vxorps %xmm1, %xmm1, %xmm1
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vpbroadcastq %rax, %xmm2
; CHECK-NEXT:    vpor %xmm0, %xmm2, %xmm0
; CHECK-NEXT:    vgatherdps (%rdi,%xmm0), %xmm1 {%k1}
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovaps %xmm1, %xmm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    retq
entry:
  %v = call <4 x float> @llvm.x86.avx512.gather3siv4.sf(<4 x float> zeroinitializer, ptr %b, <4 x i32> %iv, i8 -1, i32 1)
  ret <4 x float> %v
}

declare <4 x float> @llvm.x86.avx512.gather3div4.sf(<4 x float>, ptr, <2 x i64>, i8, i32)

define <4 x float> @test_llvm_x86_avx512_gather3div4_sf(ptr %b, <2 x i64> %iv) #2 {
; CHECK-LABEL: test_llvm_x86_avx512_gather3div4_sf:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    kxnorw %k0, %k0, %k1
; CHECK-NEXT:    vxorps %xmm1, %xmm1, %xmm1
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vpbroadcastq %rax, %xmm2
; CHECK-NEXT:    vpor %xmm0, %xmm2, %xmm0
; CHECK-NEXT:    vgatherqps (%rdi,%xmm0), %xmm1 {%k1}
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovaps %xmm1, %xmm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    retq
entry:
  %v = call <4 x float> @llvm.x86.avx512.gather3div4.sf(<4 x float> zeroinitializer, ptr %b, <2 x i64> %iv, i8 -1, i32 1)
  ret <4 x float> %v
}

declare <2 x double> @llvm.x86.avx512.gather3siv2.df(<2 x double>, ptr, <4 x i32>, i8, i32)

define <2 x double> @test_llvm_x86_avx512_gather3siv2_df(ptr %b, <4 x i32> %iv) #2 {
; CHECK-LABEL: test_llvm_x86_avx512_gather3siv2_df:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    kxnorw %k0, %k0, %k1
; CHECK-NEXT:    vxorpd %xmm1, %xmm1, %xmm1
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vpbroadcastq %rax, %xmm2
; CHECK-NEXT:    vpor %xmm0, %xmm2, %xmm0
; CHECK-NEXT:    vgatherdpd (%rdi,%xmm0), %xmm1 {%k1}
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovapd %xmm1, %xmm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    retq
entry:
  %v = call <2 x double> @llvm.x86.avx512.gather3siv2.df(<2 x double> zeroinitializer, ptr %b, <4 x i32> %iv, i8 -1, i32 1)
  ret <2 x double> %v
}

declare <2 x double> @llvm.x86.avx512.gather3div2.df(<2 x double>, ptr, <2 x i64>, i8, i32)

define <2 x double> @test_llvm_x86_avx512_gather3div2_df(ptr %b, <2 x i64> %iv) #2 {
; CHECK-LABEL: test_llvm_x86_avx512_gather3div2_df:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    kxnorw %k0, %k0, %k1
; CHECK-NEXT:    vxorpd %xmm1, %xmm1, %xmm1
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vpbroadcastq %rax, %xmm2
; CHECK-NEXT:    vpor %xmm0, %xmm2, %xmm0
; CHECK-NEXT:    vgatherqpd (%rdi,%xmm0), %xmm1 {%k1}
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovapd %xmm1, %xmm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    retq
entry:
  %v = call <2 x double> @llvm.x86.avx512.gather3div2.df(<2 x double> zeroinitializer, ptr %b, <2 x i64> %iv, i8 -1, i32 1)
  ret <2 x double> %v
}

declare <8 x float> @llvm.x86.avx512.gather3siv8.sf(<8 x float>, ptr, <8 x i32>, i8, i32)

define <8 x float> @test_llvm_x86_avx512_gather3siv8_sf(ptr %b, <8 x i32> %iv) #2 {
; CHECK-LABEL: test_llvm_x86_avx512_gather3siv8_sf:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    kxnorw %k0, %k0, %k1
; CHECK-NEXT:    vxorps %xmm1, %xmm1, %xmm1
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vpbroadcastq %rax, %ymm2
; CHECK-NEXT:    vpor %ymm0, %ymm2, %ymm0
; CHECK-NEXT:    vgatherdps (%rdi,%ymm0), %ymm1 {%k1}
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovaps %ymm1, %ymm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    retq
entry:
  %v = call <8 x float> @llvm.x86.avx512.gather3siv8.sf(<8 x float> zeroinitializer, ptr %b, <8 x i32> %iv, i8 -1, i32 1)
  ret <8 x float> %v
}

declare <4 x float> @llvm.x86.avx512.gather3div8.sf(<4 x float>, ptr, <4 x i64>, i8, i32)

define <4 x float> @test_llvm_x86_avx512_gather3div8_sf(ptr %b, <4 x i64> %iv) #2 {
; CHECK-LABEL: test_llvm_x86_avx512_gather3div8_sf:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    kxnorw %k0, %k0, %k1
; CHECK-NEXT:    vxorps %xmm1, %xmm1, %xmm1
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vpbroadcastq %rax, %ymm2
; CHECK-NEXT:    vpor %ymm0, %ymm2, %ymm0
; CHECK-NEXT:    vgatherqps (%rdi,%ymm0), %xmm1 {%k1}
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovaps %xmm1, %xmm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    vzeroupper
; CHECK-NEXT:    retq
entry:
  %v = call <4 x float> @llvm.x86.avx512.gather3div8.sf(<4 x float> zeroinitializer, ptr %b, <4 x i64> %iv, i8 -1, i32 1)
  ret <4 x float> %v
}

declare <4 x double> @llvm.x86.avx512.gather3siv4.df(<4 x double>, ptr, <4 x i32>, i8, i32)

define <4 x double> @test_llvm_x86_avx512_gather3siv4_df(ptr %b, <4 x i32> %iv) #2 {
; CHECK-LABEL: test_llvm_x86_avx512_gather3siv4_df:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    kxnorw %k0, %k0, %k1
; CHECK-NEXT:    vxorpd %xmm1, %xmm1, %xmm1
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vpbroadcastq %rax, %xmm2
; CHECK-NEXT:    vpor %xmm0, %xmm2, %xmm0
; CHECK-NEXT:    vgatherdpd (%rdi,%xmm0), %ymm1 {%k1}
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovapd %ymm1, %ymm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    retq
entry:
  %v = call <4 x double> @llvm.x86.avx512.gather3siv4.df(<4 x double> zeroinitializer, ptr %b, <4 x i32> %iv, i8 -1, i32 1)
  ret <4 x double> %v
}

declare <4 x double> @llvm.x86.avx512.gather3div4.df(<4 x double>, ptr, <4 x i64>, i8, i32)

define <4 x double> @test_llvm_x86_avx512_gather3div4_df(ptr %b, <4 x i64> %iv) #2 {
; CHECK-LABEL: test_llvm_x86_avx512_gather3div4_df:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    kxnorw %k0, %k0, %k1
; CHECK-NEXT:    vxorpd %xmm1, %xmm1, %xmm1
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vpbroadcastq %rax, %ymm2
; CHECK-NEXT:    vpor %ymm0, %ymm2, %ymm0
; CHECK-NEXT:    vgatherqpd (%rdi,%ymm0), %ymm1 {%k1}
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovapd %ymm1, %ymm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    retq
entry:
  %v = call <4 x double> @llvm.x86.avx512.gather3div4.df(<4 x double> zeroinitializer, ptr %b, <4 x i64> %iv, i8 -1, i32 1)
  ret <4 x double> %v
}

declare <4 x i32> @llvm.x86.avx512.gather3siv4.si(<4 x i32>, ptr, <4 x i32>, i8, i32)

define <4 x i32> @test_llvm_x86_avx512_gather3siv4_si(ptr %b, <4 x i32> %iv) #2 {
; CHECK-LABEL: test_llvm_x86_avx512_gather3siv4_si:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    kxnorw %k0, %k0, %k1
; CHECK-NEXT:    vpxor %xmm1, %xmm1, %xmm1
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vpbroadcastq %rax, %xmm2
; CHECK-NEXT:    vpor %xmm0, %xmm2, %xmm0
; CHECK-NEXT:    vpgatherdd (%rdi,%xmm0), %xmm1 {%k1}
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovdqa %xmm1, %xmm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    retq
entry:
  %v = call <4 x i32> @llvm.x86.avx512.gather3siv4.si(<4 x i32> zeroinitializer, ptr %b, <4 x i32> %iv, i8 -1, i32 1)
  ret <4 x i32> %v
}

declare <4 x i32> @llvm.x86.avx512.gather3div4.si(<4 x i32>, ptr, <2 x i64>, i8, i32)

define <4 x i32> @test_llvm_x86_avx512_gather3div4_si(ptr %b, <2 x i64> %iv) #2 {
; CHECK-LABEL: test_llvm_x86_avx512_gather3div4_si:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    kxnorw %k0, %k0, %k1
; CHECK-NEXT:    vpxor %xmm1, %xmm1, %xmm1
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vpbroadcastq %rax, %xmm2
; CHECK-NEXT:    vpor %xmm0, %xmm2, %xmm0
; CHECK-NEXT:    vpgatherqd (%rdi,%xmm0), %xmm1 {%k1}
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovdqa %xmm1, %xmm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    retq
entry:
  %v = call <4 x i32> @llvm.x86.avx512.gather3div4.si(<4 x i32> zeroinitializer, ptr %b, <2 x i64> %iv, i8 -1, i32 1)
  ret <4 x i32> %v
}

declare <2 x i64> @llvm.x86.avx512.gather3siv2.di(<2 x i64>, ptr, <4 x i32>, i8, i32)

define <2 x i64> @test_llvm_x86_avx512_gather3siv2_di(ptr %b, <4 x i32> %iv) #2 {
; CHECK-LABEL: test_llvm_x86_avx512_gather3siv2_di:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    kxnorw %k0, %k0, %k1
; CHECK-NEXT:    vpxor %xmm1, %xmm1, %xmm1
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vpbroadcastq %rax, %xmm2
; CHECK-NEXT:    vpor %xmm0, %xmm2, %xmm0
; CHECK-NEXT:    vpgatherdq (%rdi,%xmm0), %xmm1 {%k1}
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovdqa %xmm1, %xmm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    retq
entry:
  %v = call <2 x i64> @llvm.x86.avx512.gather3siv2.di(<2 x i64> zeroinitializer, ptr %b, <4 x i32> %iv, i8 -1, i32 1)
  ret <2 x i64> %v
}

declare <2 x i64> @llvm.x86.avx512.gather3div2.di(<2 x i64>, ptr, <2 x i64>, i8, i32)

define <2 x i64> @test_llvm_x86_avx512_gather3div2_di(ptr %b, <2 x i64> %iv) #2 {
; CHECK-LABEL: test_llvm_x86_avx512_gather3div2_di:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    kxnorw %k0, %k0, %k1
; CHECK-NEXT:    vpxor %xmm1, %xmm1, %xmm1
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vpbroadcastq %rax, %xmm2
; CHECK-NEXT:    vpor %xmm0, %xmm2, %xmm0
; CHECK-NEXT:    vpgatherqq (%rdi,%xmm0), %xmm1 {%k1}
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovdqa %xmm1, %xmm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    retq
entry:
  %v = call <2 x i64> @llvm.x86.avx512.gather3div2.di(<2 x i64> zeroinitializer, ptr %b, <2 x i64> %iv, i8 -1, i32 1)
  ret <2 x i64> %v
}

declare <8 x i32> @llvm.x86.avx512.gather3siv8.si(<8 x i32>, ptr, <8 x i32>, i8, i32)

define <8 x i32> @test_llvm_x86_avx512_gather3siv8_si(ptr %b, <8 x i32> %iv) #2 {
; CHECK-LABEL: test_llvm_x86_avx512_gather3siv8_si:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    kxnorw %k0, %k0, %k1
; CHECK-NEXT:    vpxor %xmm1, %xmm1, %xmm1
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vpbroadcastq %rax, %ymm2
; CHECK-NEXT:    vpor %ymm0, %ymm2, %ymm0
; CHECK-NEXT:    vpgatherdd (%rdi,%ymm0), %ymm1 {%k1}
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovdqa %ymm1, %ymm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    retq
entry:
  %v = call <8 x i32> @llvm.x86.avx512.gather3siv8.si(<8 x i32> zeroinitializer, ptr %b, <8 x i32> %iv, i8 -1, i32 1)
  ret <8 x i32> %v
}

declare <4 x i32> @llvm.x86.avx512.gather3div8.si(<4 x i32>, ptr, <4 x i64>, i8, i32)

define <4 x i32> @test_llvm_x86_avx512_gather3div8_si(ptr %b, <4 x i64> %iv) #2 {
; CHECK-LABEL: test_llvm_x86_avx512_gather3div8_si:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    kxnorw %k0, %k0, %k1
; CHECK-NEXT:    vpxor %xmm1, %xmm1, %xmm1
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vpbroadcastq %rax, %ymm2
; CHECK-NEXT:    vpor %ymm0, %ymm2, %ymm0
; CHECK-NEXT:    vpgatherqd (%rdi,%ymm0), %xmm1 {%k1}
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovdqa %xmm1, %xmm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    vzeroupper
; CHECK-NEXT:    retq
entry:
  %v = call <4 x i32> @llvm.x86.avx512.gather3div8.si(<4 x i32> zeroinitializer, ptr %b, <4 x i64> %iv, i8 -1, i32 1)
  ret <4 x i32> %v
}

declare <4 x i64> @llvm.x86.avx512.gather3siv4.di(<4 x i64>, ptr, <4 x i32>, i8, i32)

define <4 x i64> @test_llvm_x86_avx512_gather3siv4_di(ptr %b, <4 x i32> %iv) #2 {
; CHECK-LABEL: test_llvm_x86_avx512_gather3siv4_di:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    kxnorw %k0, %k0, %k1
; CHECK-NEXT:    vpxor %xmm1, %xmm1, %xmm1
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vpbroadcastq %rax, %xmm2
; CHECK-NEXT:    vpor %xmm0, %xmm2, %xmm0
; CHECK-NEXT:    vpgatherdq (%rdi,%xmm0), %ymm1 {%k1}
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovdqa %ymm1, %ymm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    retq
entry:
  %v = call <4 x i64> @llvm.x86.avx512.gather3siv4.di(<4 x i64> zeroinitializer, ptr %b, <4 x i32> %iv, i8 -1, i32 1)
  ret <4 x i64> %v
}

declare <4 x i64> @llvm.x86.avx512.gather3div4.di(<4 x i64>, ptr, <4 x i64>, i8, i32)

define <4 x i64> @test_llvm_x86_avx512_gather3div4_di(ptr %b, <4 x i64> %iv) #2 {
; CHECK-LABEL: test_llvm_x86_avx512_gather3div4_di:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movq %rsp, %rax
; CHECK-NEXT:    movq $-1, %rcx
; CHECK-NEXT:    sarq $63, %rax
; CHECK-NEXT:    kxnorw %k0, %k0, %k1
; CHECK-NEXT:    vpxor %xmm1, %xmm1, %xmm1
; CHECK-NEXT:    orq %rax, %rdi
; CHECK-NEXT:    vpbroadcastq %rax, %ymm2
; CHECK-NEXT:    vpor %ymm0, %ymm2, %ymm0
; CHECK-NEXT:    vpgatherqq (%rdi,%ymm0), %ymm1 {%k1}
; CHECK-NEXT:    shlq $47, %rax
; CHECK-NEXT:    vmovdqa %ymm1, %ymm0
; CHECK-NEXT:    orq %rax, %rsp
; CHECK-NEXT:    retq
entry:
  %v = call <4 x i64> @llvm.x86.avx512.gather3div4.di(<4 x i64> zeroinitializer, ptr %b, <4 x i64> %iv, i8 -1, i32 1)
  ret <4 x i64> %v
}

attributes #0 = { nounwind speculative_load_hardening "target-features"="+avx2" }
attributes #1 = { nounwind speculative_load_hardening "target-features"="+avx512f" }
attributes #2 = { nounwind speculative_load_hardening "target-features"="+avx512vl" }
