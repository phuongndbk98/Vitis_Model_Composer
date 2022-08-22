///////////////////////////////////////////////////////////////////////////
// Copyright 2020 Xilinx
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
///////////////////////////////////////////////////////////////////////////


#ifndef HLS_KERNELS_H
#define HLS_KERNELS_H

#include "hls_stream.h"

////// This header file is for adf only. HLS cpp does NOT include this header. //////

void polar_clip(hls::stream<std::complex<short> >& in_sample, hls::stream<std::complex<short> >& out_sample);

#endif