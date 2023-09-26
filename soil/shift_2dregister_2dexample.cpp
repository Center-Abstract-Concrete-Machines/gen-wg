#include "shift_2dregister_2dexample.h"

namespace shift_2dregister_2dexample {

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
	Change __m_change_29;
	Change __m_change_17;
	Change __m_change_27;
	Phasor __m_phasor_16;
	Phasor __m_phasor_18;
	SineCycle __m_cycle_28;
	SineCycle __m_cycle_30;
	SineData __sinedata;
	int __exception;
	int vectorsize;
	t_sample __m_latch_22;
	t_sample m_history_7;
	t_sample __m_latch_23;
	t_sample __m_latch_21;
	t_sample __m_latch_20;
	t_sample __m_latch_19;
	t_sample __m_latch_24;
	t_sample __m_latch_26;
	t_sample __m_latch_25;
	t_sample samplerate;
	t_sample m_history_1;
	t_sample m_history_6;
	t_sample m_history_2;
	t_sample m_history_4;
	t_sample m_history_10;
	t_sample m_history_11;
	t_sample m_history_9;
	t_sample m_history_8;
	t_sample m_history_3;
	t_sample m_history_12;
	t_sample m_knob_14;
	t_sample m_knob_13;
	t_sample samples_to_seconds;
	t_sample m_history_5;
	t_sample m_knob_15;
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
		m_history_11 = ((int)0);
		m_history_12 = ((int)0);
		m_knob_13 = ((int)0);
		m_knob_14 = ((int)0);
		m_knob_15 = ((int)0);
		samples_to_seconds = (1 / samplerate);
		__m_phasor_16.reset(0);
		__m_change_17.reset(0);
		__m_phasor_18.reset(0);
		__m_latch_19 = 0;
		__m_latch_20 = 0;
		__m_latch_21 = 0;
		__m_latch_22 = 0;
		__m_latch_23 = 0;
		__m_latch_24 = 0;
		__m_latch_25 = 0;
		__m_latch_26 = 0;
		__m_change_27.reset(0);
		__m_cycle_28.reset(samplerate, 0);
		__m_change_29.reset(0);
		__m_cycle_30.reset(samplerate, 0);
		genlib_reset_complete(this);
		
	};
	// the signal processing routine;
	inline int perform(t_sample ** __ins, t_sample ** __outs, int __n) {
		vectorsize = __n;
		const t_sample * __in1 = __ins[0];
		t_sample * __out1 = __outs[0];
		t_sample * __out2 = __outs[1];
		if (__exception) {
			return __exception;
			
		} else if (( (__in1 == 0) || (__out1 == 0) || (__out2 == 0) )) {
			__exception = GENLIB_ERR_NULL_BUFFER;
			return __exception;
			
		};
		samples_to_seconds = (1 / samplerate);
		t_sample mul_8302 = (samplerate * (2 * ((t_sample)0.33333333333333)));
		t_sample t_8303 = exp(safediv(-6.9077552789821, mul_8302));
		t_sample mul_8269 = (samplerate * (2 * ((t_sample)0.33333333333333)));
		t_sample t_8270 = exp(safediv(-6.9077552789821, mul_8269));
		// the main sample loop;
		while ((__n--)) {
			const t_sample in1 = (*(__in1++));
			t_sample phasor_8220 = __m_phasor_16(m_knob_15, samples_to_seconds);
			t_sample sub_16 = (phasor_8220 - m_history_12);
			t_sample add_17 = (phasor_8220 + m_history_12);
			t_sample div_15 = safediv(sub_16, add_17);
			t_sample abs_14 = fabs(div_15);
			int gt_12 = (abs_14 > ((t_sample)0.5));
			int change_11 = __m_change_17(gt_12);
			int gt_10 = (change_11 > ((int)0));
			int gen_8219 = gt_10;
			t_sample history_13_next_18 = fixdenorm(phasor_8220);
			t_sample phasor_8222 = __m_phasor_18(m_knob_14, samples_to_seconds);
			t_sample triangle_8221 = triangle(phasor_8222, ((t_sample)0.5));
			__m_latch_19 = ((gen_8219 != 0) ? m_history_9 : __m_latch_19);
			t_sample latch_7809 = __m_latch_19;
			__m_latch_20 = ((gen_8219 != 0) ? m_history_7 : __m_latch_20);
			t_sample latch_7804 = __m_latch_20;
			__m_latch_21 = ((gen_8219 != 0) ? m_history_10 : __m_latch_21);
			t_sample latch_7802 = __m_latch_21;
			__m_latch_22 = ((gen_8219 != 0) ? m_history_6 : __m_latch_22);
			t_sample latch_7811 = __m_latch_22;
			__m_latch_23 = ((gen_8219 != 0) ? m_history_11 : __m_latch_23);
			t_sample latch_7807 = __m_latch_23;
			__m_latch_24 = ((gen_8219 != 0) ? m_history_8 : __m_latch_24);
			t_sample latch_7806 = __m_latch_24;
			__m_latch_25 = ((gen_8219 != 0) ? m_history_5 : __m_latch_25);
			t_sample latch_7813 = __m_latch_25;
			__m_latch_26 = ((gen_8219 != 0) ? triangle_8221 : __m_latch_26);
			t_sample latch_7814 = __m_latch_26;
			t_sample gen_8211 = latch_7814;
			t_sample history_7800_next_7815 = fixdenorm(latch_7809);
			t_sample history_7801_next_7816 = fixdenorm(latch_7804);
			t_sample history_7808_next_7817 = fixdenorm(latch_7811);
			t_sample history_7805_next_7818 = fixdenorm(latch_7807);
			t_sample history_7803_next_7819 = fixdenorm(latch_7806);
			t_sample history_7810_next_7820 = fixdenorm(latch_7813);
			t_sample history_7812_next_7821 = fixdenorm(latch_7814);
			int neq_8297 = (gen_8219 != ((int)0));
			int change_8296 = __m_change_27(neq_8297);
			int gt_8295 = (change_8296 > ((int)0));
			t_sample mul_8301 = ((m_history_4 + gt_8295) * t_8303);
			t_sample clamp_8294 = ((mul_8301 <= ((int)0)) ? ((int)0) : ((mul_8301 >= ((int)1)) ? ((int)1) : mul_8301));
			t_sample mix_8396 = (clamp_8294 + (((t_sample)0.97) * (m_history_3 - clamp_8294)));
			t_sample mix_8299 = mix_8396;
			t_sample gen_8306 = mix_8299;
			t_sample history_8300_next_8304 = fixdenorm(clamp_8294);
			t_sample history_8298_next_8305 = fixdenorm(mix_8299);
			t_sample mul_8307 = (latch_7802 * ((int)12));
			int int_8309 = int(mul_8307);
			t_sample mul_8311 = (int_8309 * ((t_sample)0.58333333333333));
			t_sample round_8314 = round(mul_8311);
			t_sample div_8310 = (round_8314 * ((t_sample)1.7142857142857));
			t_sample add_8324 = (div_8310 + ((int)60));
			t_sample mtof_8323 = mtof(add_8324, ((int)440));
			__m_cycle_28.freq(mtof_8323);
			t_sample cycle_8321 = __m_cycle_28(__sinedata);
			t_sample cycleindex_8322 = __m_cycle_28.phase();
			t_sample mul_8320 = (cycle_8321 * gen_8306);
			t_sample mul_8318 = (mul_8320 * ((int)2));
			t_sample tanh_8319 = tanh(mul_8318);
			t_sample div_8317 = (tanh_8319 * ((t_sample)0.5));
			t_sample mul_8327 = (div_8317 * m_knob_13);
			int neq_8264 = (gen_8219 != ((int)0));
			int change_8263 = __m_change_29(neq_8264);
			int gt_8262 = (change_8263 > ((int)0));
			t_sample mul_8268 = ((gt_8262 + m_history_2) * t_8270);
			t_sample clamp_8261 = ((mul_8268 <= ((int)0)) ? ((int)0) : ((mul_8268 >= ((int)1)) ? ((int)1) : mul_8268));
			t_sample mix_8397 = (clamp_8261 + (((t_sample)0.97) * (m_history_1 - clamp_8261)));
			t_sample mix_8266 = mix_8397;
			t_sample gen_8273 = mix_8266;
			t_sample history_8267_next_8271 = fixdenorm(clamp_8261);
			t_sample history_8265_next_8272 = fixdenorm(mix_8266);
			t_sample mul_8274 = (gen_8211 * ((int)12));
			int int_8276 = int(mul_8274);
			t_sample mul_8278 = (int_8276 * ((t_sample)0.58333333333333));
			t_sample round_8281 = round(mul_8278);
			t_sample div_8277 = (round_8281 * ((t_sample)1.7142857142857));
			t_sample add_8291 = (div_8277 + ((int)60));
			t_sample mtof_8290 = mtof(add_8291, ((int)440));
			__m_cycle_30.freq(mtof_8290);
			t_sample cycle_8288 = __m_cycle_30(__sinedata);
			t_sample cycleindex_8289 = __m_cycle_30.phase();
			t_sample mul_8287 = (cycle_8288 * gen_8273);
			t_sample mul_8285 = (mul_8287 * ((int)2));
			t_sample tanh_8286 = tanh(mul_8285);
			t_sample div_8284 = (tanh_8286 * ((t_sample)0.5));
			t_sample mul_8328 = (div_8284 * m_knob_13);
			t_sample out2 = (mul_8328 + mul_8327);
			t_sample out1 = (mul_8327 + mul_8328);
			m_history_12 = history_13_next_18;
			m_history_11 = history_7800_next_7815;
			m_history_5 = history_7812_next_7821;
			m_history_6 = history_7810_next_7820;
			m_history_7 = history_7803_next_7819;
			m_history_8 = history_7805_next_7818;
			m_history_9 = history_7808_next_7817;
			m_history_10 = history_7801_next_7816;
			m_history_4 = history_8300_next_8304;
			m_history_3 = history_8298_next_8305;
			m_history_2 = history_8267_next_8271;
			m_history_1 = history_8265_next_8272;
			// assign results to output buffer;
			(*(__out1++)) = out1;
			(*(__out2++)) = out2;
			
		};
		return __exception;
		
	};
	inline void set_knob3(t_param _value) {
		m_knob_13 = (_value < 0 ? 0 : (_value > 1 ? 1 : _value));
	};
	inline void set_knob1(t_param _value) {
		m_knob_14 = (_value < 0 ? 0 : (_value > 20 ? 20 : _value));
	};
	inline void set_knob2(t_param _value) {
		m_knob_15 = (_value < 0.02 ? 0.02 : (_value > 20 ? 20 : _value));
	};
	
} State;


///
///	Configuration for the genlib API
///

/// Number of signal inputs and outputs

int gen_kernel_numins = 1;
int gen_kernel_numouts = 2;

int num_inputs() { return gen_kernel_numins; }
int num_outputs() { return gen_kernel_numouts; }
int num_params() { return 3; }

/// Assistive lables for the signal inputs and outputs

const char *gen_kernel_innames[] = { "in1" };
const char *gen_kernel_outnames[] = { "out1", "out2" };

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
		case 0: *value = self->m_knob_14; break;
		case 1: *value = self->m_knob_15; break;
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
	// initialize parameter 0 ("m_knob_14")
	pi = self->__commonstate.params + 0;
	pi->name = "knob1";
	pi->paramtype = GENLIB_PARAMTYPE_FLOAT;
	pi->defaultvalue = self->m_knob_14;
	pi->defaultref = 0;
	pi->hasinputminmax = false;
	pi->inputmin = 0;
	pi->inputmax = 1;
	pi->hasminmax = true;
	pi->outputmin = 0;
	pi->outputmax = 20;
	pi->exp = 0;
	pi->units = "";		// no units defined
	// initialize parameter 1 ("m_knob_15")
	pi = self->__commonstate.params + 1;
	pi->name = "knob2";
	pi->paramtype = GENLIB_PARAMTYPE_FLOAT;
	pi->defaultvalue = self->m_knob_15;
	pi->defaultref = 0;
	pi->hasinputminmax = false;
	pi->inputmin = 0;
	pi->inputmax = 1;
	pi->hasminmax = true;
	pi->outputmin = 0.02;
	pi->outputmax = 20;
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


} // shift_2dregister_2dexample::
