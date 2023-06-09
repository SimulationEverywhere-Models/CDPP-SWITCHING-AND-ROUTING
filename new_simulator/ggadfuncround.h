// $Header$

#ifndef __GGADFUNCROUND_H__
#define __GGADFUNCROUND_H__

#include "ggadfunc.h"
#include "math.h"


class GgadFuncRound : public GgadFunc {

public:
    GgadFuncRound() {
        setFormalParams(1);
    }

    virtual ~GgadFuncRound() {}

    virtual std::string name() { return "round"; }

    virtual GgadValue executeImpl () {
            	
		double vv;
		GgadValue v = modf( getParameter(0), &vv ); 
		if ( v >= 0.5 )
			return ceil( getParameter(0) );
		else
			return floor( getParameter(0) );

	    	
    }

    virtual GgadFuncRound* create() { return new GgadFuncRound(); }

};

#endif // __GGADFUNCROUND_H__
