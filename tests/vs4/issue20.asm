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
//   bool g_bBoolParam;                 // Offset:    0 Size:     4
//   int g_IntParam;                    // Offset:    4 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// $Globals                          cbuffer      NA          NA    0        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE     int   xyzw
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
//
vs_4_0
dcl_constantbuffer cb0[1], immediateIndexed
dcl_input v0.xyzw
dcl_output o0.xyzw
dcl_temps 1
movc r0.xyzw, cb0[0].xxxx, v0.xyzw, l(0,0,0,0)
iadd r0.xyzw, r0.xyzw, cb0[0].yyyy
itof o0.xyzw, r0.xyzw
ret 
// Approximately 4 instruction slots used
