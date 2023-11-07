#include "drum_2ddemo.h"

namespace drum_2ddemo {

/****************************************************************************************
Copyright (c) 2023 Cycling '74

The code that Max generates automatically and that end users are capable of
exporting and using, and any associated documentation files (the “Software”)
is a work of authorship for which Cycling '74 is the author and owner for
copyright purposes.

This Software is dual-licensed either under the terms of the Cycling '74
License for Max-Generated Code for Export, or alternatively under the terms
of the General Public License (GPL) Version 3. You may use the Software
according to either of these licenses as it is most appropriate for your
project on a case-by-case basis (proprietary or not).

A) Cycling '74 License for Max-Generated Code for Export

A license is hereby granted, free of charge, to any person obtaining a copy
of the Software (“Licensee”) to use, copy, modify, merge, publish, and
distribute copies of the Software, and to permit persons to whom the Software
is furnished to do so, subject to the following conditions:

The Software is licensed to Licensee for all uses that do not include the sale,
sublicensing, or commercial distribution of software that incorporates this
source code. This means that the Licensee is free to use this software for
educational, research, and prototyping purposes, to create musical or other
creative works with software that incorporates this source code, or any other
use that does not constitute selling software that makes use of this source
code. Commercial distribution also includes the packaging of free software with
other paid software, hardware, or software-provided commercial services.

For entities with UNDER 200k USD in annual revenue or funding, a license is hereby
granted, free of charge, for the sale, sublicensing, or commercial distribution
of software that incorporates this source code, for as long as the entity's
annual revenue remains below 200k USD annual revenue or funding.

For entities with OVER 200k USD in annual revenue or funding interested in the
sale, sublicensing, or commercial distribution of software that incorporates
this source code, please send inquiries to licensing (at) cycling74.com.

The above copyright notice and this license shall be included in all copies or
substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

Please see
https://support.cycling74.com/hc/en-us/articles/360050779193-Gen-Code-Export-Licensing-FAQ
for additional information

B) General Public License Version 3 (GPLv3)
Details of the GPLv3 license can be found at: https://www.gnu.org/licenses/gpl-3.0.html
****************************************************************************************/

// global noise generator
Noise noise;
static const int GENLIB_LOOPCOUNT_BAIL = 100000;


// The State struct contains all the state and procedures for the gendsp kernel
typedef struct State {
	CommonState __commonstate;
	Change __m_change_21;
	Change __m_change_16;
	Change __m_change_18;
	Change __m_change_20;
	Change __m_change_15;
	Delta __m_delta_19;
	Phasor __m_phasor_14;
	PlusEquals __m_pluseq_17;
	PlusEquals __m_pluseq_22;
	int __exception;
	int vectorsize;
	t_sample m_history_3;
	t_sample m_history_8;
	t_sample m_history_2;
	t_sample m_history_1;
	t_sample samplerate;
	t_sample m_history_4;
	t_sample m_history_7;
	t_sample m_history_5;
	t_sample m_knob_13;
	t_sample m_history_9;
	t_sample samples_to_seconds;
	t_sample m_history_6;
	t_sample m_knob_12;
	t_sample m_knob_11;
	t_sample m_history_10;
	// re-initialize all member variables;
	inline void reset(t_param __sr, int __vs) {
		__exception = 0;
		vectorsize = __vs;
		samplerate = __sr;
		m_history_1 = ((int)0);
		m_history_2 = ((int)0);
		m_history_3 = ((int)0);
		m_history_4 = ((int)0);
		m_history_5 = ((int)0);
		m_history_6 = ((int)0);
		m_history_7 = ((int)0);
		m_history_8 = ((int)0);
		m_history_9 = ((int)0);
		m_history_10 = ((int)0);
		m_knob_11 = ((int)0);
		m_knob_12 = ((int)0);
		m_knob_13 = ((t_sample)0.1);
		samples_to_seconds = (1 / samplerate);
		__m_phasor_14.reset(0);
		__m_change_15.reset(0);
		__m_change_16.reset(0);
		__m_pluseq_17.reset(0);
		__m_change_18.reset(0);
		__m_delta_19.reset(0);
		__m_change_20.reset(0);
		__m_change_21.reset(0);
		__m_pluseq_22.reset(0);
		genlib_reset_complete(this);
		
	};
	// the signal processing routine;
	inline int perform(t_sample ** __ins, t_sample ** __outs, int __n) {
		vectorsize = __n;
		const t_sample * __in1 = __ins[0];
		t_sample * __out1 = __outs[0];
		t_sample * __out2 = __outs[1];
		t_sample * __out3 = __outs[2];
		t_sample * __out4 = __outs[3];
		t_sample * __out5 = __outs[4];
		t_sample * __out6 = __outs[5];
		t_sample * __out7 = __outs[6];
		if (__exception) {
			return __exception;
			
		} else if (( (__in1 == 0) || (__out1 == 0) || (__out2 == 0) || (__out3 == 0) || (__out4 == 0) || (__out5 == 0) || (__out6 == 0) || (__out7 == 0) )) {
			__exception = GENLIB_ERR_NULL_BUFFER;
			return __exception;
			
		};
		t_sample div_74 = (m_knob_11 * ((t_sample)0.016666666666667));
		samples_to_seconds = (1 / samplerate);
		t_sample rdiv_28 = safediv(((int)1), m_knob_12);
		t_sample history_15_next_42 = fixdenorm(m_knob_12);
		// the main sample loop;
		while ((__n--)) {
			const t_sample in1 = (*(__in1++));
			t_sample out7 = m_knob_13;
			t_sample phasor_73 = __m_phasor_14(div_74, samples_to_seconds);
			t_sample sub_9 = (phasor_73 - m_history_10);
			t_sample add_10 = (phasor_73 + m_history_10);
			t_sample div_8 = safediv(sub_9, add_10);
			t_sample abs_7 = fabs(div_8);
			int gt_5 = (abs_7 > ((t_sample)0.5));
			int change_4 = __m_change_15(gt_5);
			int gt_3 = (change_4 > ((int)0));
			int gen_72 = gt_3;
			t_sample history_6_next_11 = fixdenorm(phasor_73);
			t_sample out5 = gen_72;
			t_sample sub_2925 = (gen_72 - m_history_9);
			t_sample add_2926 = (gen_72 + m_history_9);
			t_sample div_2930 = safediv(sub_2925, add_2926);
			t_sample abs_2927 = fabs(div_2930);
			int gt_2924 = (abs_2927 > ((t_sample)0.5));
			int change_2928 = __m_change_16(gt_2924);
			int gt_2929 = (change_2928 > ((int)0));
			int gen_63 = gt_2929;
			t_sample history_6_next_2931 = fixdenorm(gen_72);
			t_sample plusequals_62 = __m_pluseq_17.post(safediv(8, samplerate), gen_63, 0);
			t_sample clamp_61 = ((plusequals_62 <= ((int)0)) ? ((int)0) : ((plusequals_62 >= ((int)1)) ? ((int)1) : plusequals_62));
			t_sample sub_3121 = (clamp_61 - ((int)0));
			t_sample scale_3118 = ((safepow((sub_3121 * ((t_sample)1)), (1 * ((t_sample)0.25))) * ((int)-1)) + ((int)1));
			t_sample scale_64 = scale_3118;
			t_sample sub_3125 = (scale_64 - ((int)1));
			t_sample scale_3122 = ((safepow((sub_3125 * ((t_sample)-1)), ((int)1)) * ((int)-100)) + ((int)150));
			t_sample scale_67 = scale_3122;
			t_sample sin_68 = sin(scale_67);
			t_sample mul_69 = (scale_64 * sin_68);
			t_sample mix_3126 = (mul_69 + (((t_sample)0.9) * (m_history_8 - mul_69)));
			t_sample mix_66 = mix_3126;
			t_sample gen_71 = mix_66;
			t_sample history_65_next_70 = fixdenorm(mix_66);
			t_sample mul_937 = (gen_71 * m_knob_13);
			t_sample mul_20 = (phasor_73 * rdiv_28);
			t_sample sub_2934 = (phasor_73 - m_history_7);
			t_sample add_2936 = (phasor_73 + m_history_7);
			t_sample div_2940 = safediv(sub_2934, add_2936);
			t_sample abs_2937 = fabs(div_2940);
			int gt_2935 = (abs_2937 > ((t_sample)0.5));
			int change_2939 = __m_change_18(gt_2935);
			int gt_2941 = (change_2939 > ((int)0));
			int gen_30 = gt_2941;
			t_sample history_6_next_2938 = fixdenorm(phasor_73);
			t_sample delta_36 = __m_delta_19(phasor_73);
			t_sample wrap_37 = wrap(delta_36, (-0.5), ((t_sample)0.5));
			t_sample gen_38 = wrap_37;
			t_sample mul_33 = (gen_38 * rdiv_28);
			t_sample add_31 = (mul_33 + m_history_4);
			t_sample sub_18 = (add_31 - mul_20);
			t_sample round_29 = (trunc(safediv(sub_18, rdiv_28)) * rdiv_28);
			t_sample add_19 = (round_29 + mul_20);
			t_sample sub_40 = (m_history_5 - m_knob_12);
			t_sample add_41 = (m_history_5 + m_knob_12);
			t_sample div_39 = safediv(sub_40, add_41);
			t_sample abs_13 = fabs(div_39);
			int gt_14 = (abs_13 > ((t_sample)0.015625));
			int and_17 = (gt_14 && ((int)1));
			t_sample switch_21 = (and_17 ? and_17 : m_history_6);
			t_sample switch_24 = (gen_30 ? switch_21 : ((int)0));
			t_sample gen_27 = switch_24;
			t_sample switch_23 = (switch_24 ? ((int)0) : switch_21);
			t_sample history_25_next_26 = fixdenorm(switch_23);
			int or_16 = (gen_27 || ((int)0));
			t_sample switch_35 = (or_16 ? add_19 : add_31);
			t_sample wrap_32 = wrap(switch_35, ((int)0), ((int)1));
			t_sample gen_44 = wrap_32;
			t_sample history_34_next_43 = fixdenorm(wrap_32);
			t_sample sub_2943 = (gen_44 - m_history_3);
			t_sample add_2949 = (gen_44 + m_history_3);
			t_sample div_2946 = safediv(sub_2943, add_2949);
			t_sample abs_2950 = fabs(div_2946);
			int gt_2948 = (abs_2950 > ((t_sample)0.5));
			int change_2945 = __m_change_20(gt_2948);
			int gt_2951 = (change_2945 > ((int)0));
			int gen_12 = gt_2951;
			t_sample history_6_next_2944 = fixdenorm(gen_44);
			t_sample out6 = gen_12;
			t_sample noise_56 = noise();
			t_sample mix_3127 = (noise_56 + (((t_sample)0.7) * (m_history_1 - noise_56)));
			t_sample mix_54 = mix_3127;
			t_sample sub_52 = (noise_56 - mix_54);
			t_sample sub_2953 = (gen_12 - m_history_2);
			t_sample add_2959 = (gen_12 + m_history_2);
			t_sample div_2956 = safediv(sub_2953, add_2959);
			t_sample abs_2960 = fabs(div_2956);
			int gt_2958 = (abs_2960 > ((t_sample)0.5));
			int change_2955 = __m_change_21(gt_2958);
			int gt_2961 = (change_2955 > ((int)0));
			t_sample history_6_next_2954 = fixdenorm(gen_12);
			t_sample plusequals_50 = __m_pluseq_22.post(((t_sample)0.00022675736961451), gt_2961, 0);
			t_sample clamp_49 = ((plusequals_50 <= ((int)0)) ? ((int)0) : ((plusequals_50 >= ((int)1)) ? ((int)1) : plusequals_50));
			t_sample sub_3131 = (clamp_49 - ((int)0));
			t_sample scale_3128 = ((safepow((sub_3131 * ((t_sample)1)), (1 * ((t_sample)0.25))) * ((int)-1)) + ((int)1));
			t_sample mul_55 = (scale_3128 * sub_52);
			t_sample history_53_next_59 = fixdenorm(mix_54);
			t_sample mul_1006 = (mul_55 * m_knob_13);
			t_sample out1 = (mul_1006 + mul_937);
			t_sample out2 = (mul_1006 + mul_937);
			m_history_10 = history_6_next_11;
			m_history_9 = history_6_next_2931;
			m_history_8 = history_65_next_70;
			m_history_7 = history_6_next_2938;
			m_history_4 = history_34_next_43;
			m_history_5 = history_15_next_42;
			m_history_6 = history_25_next_26;
			m_history_3 = history_6_next_2944;
			m_history_2 = history_6_next_2954;
			m_history_1 = history_53_next_59;
			// assign results to output buffer;
			(*(__out1++)) = out1;
			(*(__out2++)) = out2;
			(*(__out3++)) = 0;
			(*(__out4++)) = 0;
			(*(__out5++)) = out5;
			(*(__out6++)) = out6;
			(*(__out7++)) = out7;
			
		};
		return __exception;
		
	};
	inline void set_knob1(t_param _value) {
		m_knob_11 = (_value < 40 ? 40 : (_value > 200 ? 200 : _value));
	};
	inline void set_knob2(t_param _value) {
		m_knob_12 = (_value < 0.01 ? 0.01 : (_value > 2 ? 2 : _value));
	};
	inline void set_knob3(t_param _value) {
		m_knob_13 = (_value < 0 ? 0 : (_value > 1 ? 1 : _value));
	};
	
} State;


///
///	Configuration for the genlib API
///

/// Number of signal inputs and outputs

int gen_kernel_numins = 1;
int gen_kernel_numouts = 7;

int num_inputs() { return gen_kernel_numins; }
int num_outputs() { return gen_kernel_numouts; }
int num_params() { return 3; }

/// Assistive lables for the signal inputs and outputs

const char *gen_kernel_innames[] = { "in1" };
const char *gen_kernel_outnames[] = { "out1", "out2", "out3", "out4", "led1", "led2", "led3" };

/// Invoke the signal process of a State object

int perform(CommonState *cself, t_sample **ins, long numins, t_sample **outs, long numouts, long n) {
	State* self = (State *)cself;
	return self->perform(ins, outs, n);
}

/// Reset all parameters and stateful operators of a State object

void reset(CommonState *cself) {
	State* self = (State *)cself;
	self->reset(cself->sr, cself->vs);
}

/// Set a parameter of a State object

void setparameter(CommonState *cself, long index, t_param value, void *ref) {
	State *self = (State *)cself;
	switch (index) {
		case 0: self->set_knob1(value); break;
		case 1: self->set_knob2(value); break;
		case 2: self->set_knob3(value); break;
		
		default: break;
	}
}

/// Get the value of a parameter of a State object

void getparameter(CommonState *cself, long index, t_param *value) {
	State *self = (State *)cself;
	switch (index) {
		case 0: *value = self->m_knob_11; break;
		case 1: *value = self->m_knob_12; break;
		case 2: *value = self->m_knob_13; break;
		
		default: break;
	}
}

/// Get the name of a parameter of a State object

const char *getparametername(CommonState *cself, long index) {
	if (index >= 0 && index < cself->numparams) {
		return cself->params[index].name;
	}
	return 0;
}

/// Get the minimum value of a parameter of a State object

t_param getparametermin(CommonState *cself, long index) {
	if (index >= 0 && index < cself->numparams) {
		return cself->params[index].outputmin;
	}
	return 0;
}

/// Get the maximum value of a parameter of a State object

t_param getparametermax(CommonState *cself, long index) {
	if (index >= 0 && index < cself->numparams) {
		return cself->params[index].outputmax;
	}
	return 0;
}

/// Get parameter of a State object has a minimum and maximum value

char getparameterhasminmax(CommonState *cself, long index) {
	if (index >= 0 && index < cself->numparams) {
		return cself->params[index].hasminmax;
	}
	return 0;
}

/// Get the units of a parameter of a State object

const char *getparameterunits(CommonState *cself, long index) {
	if (index >= 0 && index < cself->numparams) {
		return cself->params[index].units;
	}
	return 0;
}

/// Get the size of the state of all parameters of a State object

size_t getstatesize(CommonState *cself) {
	return genlib_getstatesize(cself, &getparameter);
}

/// Get the state of all parameters of a State object

short getstate(CommonState *cself, char *state) {
	return genlib_getstate(cself, state, &getparameter);
}

/// set the state of all parameters of a State object

short setstate(CommonState *cself, const char *state) {
	return genlib_setstate(cself, state, &setparameter);
}

/// Allocate and configure a new State object and it's internal CommonState:

void *create(t_param sr, long vs) {
	State *self = new State;
	self->reset(sr, vs);
	ParamInfo *pi;
	self->__commonstate.inputnames = gen_kernel_innames;
	self->__commonstate.outputnames = gen_kernel_outnames;
	self->__commonstate.numins = gen_kernel_numins;
	self->__commonstate.numouts = gen_kernel_numouts;
	self->__commonstate.sr = sr;
	self->__commonstate.vs = vs;
	self->__commonstate.params = (ParamInfo *)genlib_sysmem_newptr(3 * sizeof(ParamInfo));
	self->__commonstate.numparams = 3;
	// initialize parameter 0 ("m_knob_11")
	pi = self->__commonstate.params + 0;
	pi->name = "knob1";
	pi->paramtype = GENLIB_PARAMTYPE_FLOAT;
	pi->defaultvalue = self->m_knob_11;
	pi->defaultref = 0;
	pi->hasinputminmax = false;
	pi->inputmin = 0;
	pi->inputmax = 1;
	pi->hasminmax = true;
	pi->outputmin = 40;
	pi->outputmax = 200;
	pi->exp = 0;
	pi->units = "";		// no units defined
	// initialize parameter 1 ("m_knob_12")
	pi = self->__commonstate.params + 1;
	pi->name = "knob2";
	pi->paramtype = GENLIB_PARAMTYPE_FLOAT;
	pi->defaultvalue = self->m_knob_12;
	pi->defaultref = 0;
	pi->hasinputminmax = false;
	pi->inputmin = 0;
	pi->inputmax = 1;
	pi->hasminmax = true;
	pi->outputmin = 0.01;
	pi->outputmax = 2;
	pi->exp = 0;
	pi->units = "";		// no units defined
	// initialize parameter 2 ("m_knob_13")
	pi = self->__commonstate.params + 2;
	pi->name = "knob3";
	pi->paramtype = GENLIB_PARAMTYPE_FLOAT;
	pi->defaultvalue = self->m_knob_13;
	pi->defaultref = 0;
	pi->hasinputminmax = false;
	pi->inputmin = 0;
	pi->inputmax = 1;
	pi->hasminmax = true;
	pi->outputmin = 0;
	pi->outputmax = 1;
	pi->exp = 0;
	pi->units = "";		// no units defined
	
	return self;
}

/// Release all resources and memory used by a State object:

void destroy(CommonState *cself) {
	State *self = (State *)cself;
	genlib_sysmem_freeptr(cself->params);
		
	delete self;
}


} // drum_2ddemo::
