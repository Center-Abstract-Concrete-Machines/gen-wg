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
	Change __m_change_15;
	Change __m_change_18;
	Change __m_change_17;
	Change __m_change_20;
	Delta __m_delta_16;
	Phasor __m_phasor_14;
	PlusEquals __m_pluseq_19;
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
		m_knob_13 = ((int)0);
		samples_to_seconds = (1 / samplerate);
		__m_phasor_14.reset(0);
		__m_change_15.reset(0);
		__m_delta_16.reset(0);
		__m_change_17.reset(0);
		__m_change_18.reset(0);
		__m_pluseq_19.reset(0);
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
		if (__exception) {
			return __exception;
			
		} else if (( (__in1 == 0) || (__out1 == 0) || (__out2 == 0) || (__out3 == 0) || (__out4 == 0) || (__out5 == 0) )) {
			__exception = GENLIB_ERR_NULL_BUFFER;
			return __exception;
			
		};
		t_sample div_8 = (m_knob_11 * ((t_sample)0.016666666666667));
		samples_to_seconds = (1 / samplerate);
		t_sample rdiv_245 = safediv(((int)1), m_knob_13);
		t_sample history_232_next_259 = fixdenorm(m_knob_13);
		// the main sample loop;
		while ((__n--)) {
			const t_sample in1 = (*(__in1++));
			t_sample phasor_9 = __m_phasor_14(div_8, samples_to_seconds);
			t_sample mul_237 = (phasor_9 * rdiv_245);
			t_sample sub_16 = (phasor_9 - m_history_10);
			t_sample add_17 = (phasor_9 + m_history_10);
			t_sample div_15 = safediv(sub_16, add_17);
			t_sample abs_14 = fabs(div_15);
			int gt_12 = (abs_14 > ((t_sample)0.5));
			int change_11 = __m_change_15(gt_12);
			int gt_10 = (change_11 > ((int)0));
			int gen_247 = gt_10;
			t_sample history_13_next_18 = fixdenorm(phasor_9);
			t_sample delta_253 = __m_delta_16(phasor_9);
			t_sample wrap_254 = wrap(delta_253, (-0.5), ((t_sample)0.5));
			t_sample gen_255 = wrap_254;
			t_sample mul_250 = (gen_255 * rdiv_245);
			t_sample add_248 = (mul_250 + m_history_7);
			t_sample sub_235 = (add_248 - mul_237);
			t_sample round_246 = (trunc(safediv(sub_235, rdiv_245)) * rdiv_245);
			t_sample add_236 = (round_246 + mul_237);
			t_sample sub_257 = (m_history_8 - m_knob_13);
			t_sample add_258 = (m_history_8 + m_knob_13);
			t_sample div_256 = safediv(sub_257, add_258);
			t_sample abs_230 = fabs(div_256);
			int gt_231 = (abs_230 > ((t_sample)0.015625));
			int and_234 = (gt_231 && ((int)1));
			t_sample switch_238 = (and_234 ? and_234 : m_history_9);
			t_sample switch_241 = (gen_247 ? switch_238 : ((int)0));
			t_sample gen_244 = switch_241;
			t_sample switch_240 = (switch_241 ? ((int)0) : switch_238);
			t_sample history_242_next_243 = fixdenorm(switch_240);
			int or_233 = (gen_244 || ((int)0));
			t_sample switch_252 = (or_233 ? add_236 : add_248);
			t_sample wrap_249 = wrap(switch_252, ((int)0), ((int)1));
			t_sample gen_261 = wrap_249;
			t_sample history_251_next_260 = fixdenorm(wrap_249);
			t_sample out5 = gen_261;
			t_sample sub_7707 = (gen_261 - m_history_6);
			t_sample add_7700 = (gen_261 + m_history_6);
			t_sample div_7708 = safediv(sub_7707, add_7700);
			t_sample abs_7703 = fabs(div_7708);
			int gt_7705 = (abs_7703 > ((t_sample)0.5));
			int change_7704 = __m_change_17(gt_7705);
			int gt_7702 = (change_7704 > ((int)0));
			int gen_401 = gt_7702;
			t_sample history_13_next_7706 = fixdenorm(gen_261);
			t_sample noise_81 = noise();
			t_sample mix_7782 = (noise_81 + (((t_sample)0.7) * (m_history_4 - noise_81)));
			t_sample mix_79 = mix_7782;
			t_sample sub_77 = (noise_81 - mix_79);
			t_sample sub_7717 = (gen_401 - m_history_5);
			t_sample add_7710 = (gen_401 + m_history_5);
			t_sample div_7713 = safediv(sub_7717, add_7710);
			t_sample abs_7714 = fabs(div_7713);
			int gt_7715 = (abs_7714 > ((t_sample)0.5));
			int change_7718 = __m_change_18(gt_7715);
			int gt_7712 = (change_7718 > ((int)0));
			t_sample history_13_next_7716 = fixdenorm(gen_401);
			t_sample plusequals_75 = __m_pluseq_19.post(((t_sample)0.00020833333333333), gt_7712, 0);
			t_sample clamp_74 = ((plusequals_75 <= ((int)0)) ? ((int)0) : ((plusequals_75 >= ((int)1)) ? ((int)1) : plusequals_75));
			t_sample sub_7786 = (clamp_74 - ((int)0));
			t_sample scale_7783 = ((safepow((sub_7786 * ((t_sample)1)), (1 * ((t_sample)0.25))) * ((int)-1)) + ((int)1));
			t_sample mul_80 = (scale_7783 * sub_77);
			t_sample history_78_next_84 = fixdenorm(mix_79);
			t_sample mul_7222 = (mul_80 * m_knob_12);
			t_sample sub_7727 = (phasor_9 - m_history_3);
			t_sample add_7720 = (phasor_9 + m_history_3);
			t_sample div_7726 = safediv(sub_7727, add_7720);
			t_sample abs_7721 = fabs(div_7726);
			int gt_7723 = (abs_7721 > ((t_sample)0.5));
			int change_7722 = __m_change_20(gt_7723);
			int gt_7728 = (change_7722 > ((int)0));
			int gen_19 = gt_7728;
			t_sample history_13_next_7724 = fixdenorm(phasor_9);
			t_sample sub_7737 = (gen_19 - m_history_2);
			t_sample add_7730 = (gen_19 + m_history_2);
			t_sample div_7736 = safediv(sub_7737, add_7730);
			t_sample abs_7731 = fabs(div_7736);
			int gt_7733 = (abs_7731 > ((t_sample)0.5));
			int change_7732 = __m_change_21(gt_7733);
			int gt_7738 = (change_7732 > ((int)0));
			int gen_22 = gt_7738;
			t_sample history_13_next_7734 = fixdenorm(gen_19);
			t_sample plusequals_21 = __m_pluseq_22.post(safediv(8, samplerate), gen_22, 0);
			t_sample clamp_20 = ((plusequals_21 <= ((int)0)) ? ((int)0) : ((plusequals_21 >= ((int)1)) ? ((int)1) : plusequals_21));
			t_sample sub_7790 = (clamp_20 - ((int)0));
			t_sample scale_7787 = ((safepow((sub_7790 * ((t_sample)1)), (1 * ((t_sample)0.25))) * ((int)-1)) + ((int)1));
			t_sample scale_23 = scale_7787;
			t_sample sub_7794 = (scale_23 - ((int)1));
			t_sample scale_7791 = ((safepow((sub_7794 * ((t_sample)-1)), ((int)1)) * ((int)-100)) + ((int)150));
			t_sample scale_26 = scale_7791;
			t_sample sin_27 = sin(scale_26);
			t_sample mul_28 = (scale_23 * sin_27);
			t_sample mix_7795 = (mul_28 + (((t_sample)0.9) * (m_history_1 - mul_28)));
			t_sample mix_25 = mix_7795;
			t_sample gen_30 = mix_25;
			t_sample history_24_next_29 = fixdenorm(mix_25);
			t_sample mul_7503 = (gen_30 * m_knob_12);
			t_sample out2 = (mul_7503 + mul_7222);
			t_sample out1 = (mul_7503 + mul_7222);
			m_history_10 = history_13_next_18;
			m_history_7 = history_251_next_260;
			m_history_8 = history_232_next_259;
			m_history_9 = history_242_next_243;
			m_history_6 = history_13_next_7706;
			m_history_5 = history_13_next_7716;
			m_history_4 = history_78_next_84;
			m_history_3 = history_13_next_7724;
			m_history_2 = history_13_next_7734;
			m_history_1 = history_24_next_29;
			// assign results to output buffer;
			(*(__out1++)) = out1;
			(*(__out2++)) = out2;
			(*(__out3++)) = 0;
			(*(__out4++)) = 0;
			(*(__out5++)) = out5;
			
		};
		return __exception;
		
	};
	inline void set_knob1(t_param _value) {
		m_knob_11 = (_value < 40 ? 40 : (_value > 200 ? 200 : _value));
	};
	inline void set_knob3(t_param _value) {
		m_knob_12 = (_value < 0 ? 0 : (_value > 1 ? 1 : _value));
	};
	inline void set_knob2(t_param _value) {
		m_knob_13 = (_value < 0.01 ? 0.01 : (_value > 2 ? 2 : _value));
	};
	
} State;


///
///	Configuration for the genlib API
///

/// Number of signal inputs and outputs

int gen_kernel_numins = 1;
int gen_kernel_numouts = 5;

int num_inputs() { return gen_kernel_numins; }
int num_outputs() { return gen_kernel_numouts; }
int num_params() { return 3; }

/// Assistive lables for the signal inputs and outputs

const char *gen_kernel_innames[] = { "in1" };
const char *gen_kernel_outnames[] = { "out1", "out2", "out3", "out4", "divided-ramp" };

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
		case 1: *value = self->m_knob_13; break;
		case 2: *value = self->m_knob_12; break;
		
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
	// initialize parameter 1 ("m_knob_13")
	pi = self->__commonstate.params + 1;
	pi->name = "knob2";
	pi->paramtype = GENLIB_PARAMTYPE_FLOAT;
	pi->defaultvalue = self->m_knob_13;
	pi->defaultref = 0;
	pi->hasinputminmax = false;
	pi->inputmin = 0;
	pi->inputmax = 1;
	pi->hasminmax = true;
	pi->outputmin = 0.01;
	pi->outputmax = 2;
	pi->exp = 0;
	pi->units = "";		// no units defined
	// initialize parameter 2 ("m_knob_12")
	pi = self->__commonstate.params + 2;
	pi->name = "knob3";
	pi->paramtype = GENLIB_PARAMTYPE_FLOAT;
	pi->defaultvalue = self->m_knob_12;
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
