//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.20499
//
//
///
// Buffer Definitions: 
//
// cbuffer $Globals
// {
//
//   float4x4 ViewProjection;           // Offset:    0 Size:    64
//
// }
//
// Resource bind info for WorldTransformData
// {
//
//   float4x4 $Element;                 // Offset:    0 Size:    64
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// WorldTransformData                texture  struct         r/o    0        1
// $Globals                          cbuffer      NA          NA    0        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_Position              0   xyzw        0      POS   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[4], immediateIndexed
dcl_resource_structured t0, 64 
dcl_input v0.xyz
dcl_output_siv o0.xyzw, position
dcl_temps 3
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyzw, l(0), l(0), t0.xyzw
mov r1.xyz, v0.xyzx
mov r1.w, l(1.000000)
dp4 r0.x, r1.xyzw, r0.xyzw
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, l(0), l(16), t0.xyzw
dp4 r0.y, r1.xyzw, r2.xyzw
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, l(0), l(32), t0.xyzw
dp4 r0.z, r1.xyzw, r2.xyzw
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, l(0), l(48), t0.xyzw
dp4 r0.w, r1.xyzw, r2.xyzw
dp4 o0.x, r0.xyzw, cb0[0].xyzw
dp4 o0.y, r0.xyzw, cb0[1].xyzw
dp4 o0.z, r0.xyzw, cb0[2].xyzw
dp4 o0.w, r0.xyzw, cb0[3].xyzw
ret 
// Approximately 15 instruction slots used