; *************************************************************
;
; The OpenTRV project licenses this file to you
; under the Apache Licence, Version 2.0 (the "Licence");
; you may not use this file except in compliance
; with the Licence. You may obtain a copy of the Licence at
;
; http://www.apache.org/licenses/LICENSE-2.0
;
; Unless required by applicable law or agreed to in writing,
; software distributed under the Licence is distributed on an
; "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
; KIND, either express or implied. See the Licence for the
; specific language governing permissions and limitations
; under the Licence.
;
; *************************************************************
; Author(s) / Copyright (c): Damon Hart-Davis 2013

; ****** BCDtools.inc.bas ****** in module library
; Empty appendable PICAXE basic fragment.
; BCD arithmetic tools.

#ifdef USE_MODULE_BCDTOOLS ; Only use content if explicitly requested.

; Convert the BCD value in B0 to binary in B1.
; B0 is not altered.
BCDtoBinary:
    B1 = B0 & $f
    B1 = B0 / 16 * 10 + B1
    return

#endif