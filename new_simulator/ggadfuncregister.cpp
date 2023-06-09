
#include "ggadsymboltable.h"
#include "ggadfunc.h"

// functions to be registered for use in models
#include "ggadfuncvalue.h"
#include "ggadfuncadd.h"
#include "ggadfuncminus.h"
#include "ggadfuncmultiply.h"
#include "ggadfuncdivide.h"
#include "ggadfuncbetween.h"
#include "ggadfuncpow.h"
#include "ggadfunccompare.h"
#include "ggadfuncany.h"
#include "ggadfuncpi.h"
#include "ggadfuncequal.h"
#include "ggadfuncnotequal.h"
#include "ggadfuncand.h"
#include "ggadfuncor.h"
#include "ggadfuncnot.h"
#include "ggadfuncrand.h"
#include "ggadfuncless.h"
#include "ggadfuncgreater.h"
#include "ggadfuncgreaterequal.h"
#include "ggadfuncround.h"



/** Register builtin functions to be used.
    @todo Use GgadFunc::name() to get the name to register. */
void GgadSymbolTable::RegisterFunctions() {
    addFunction( "value", new GgadFuncValue() );
    addFunction( "add", new GgadFuncAdd() );
    addFunction( "minus", new GgadFuncMinus() );
    addFunction( "multiply", new GgadFuncMultiply() );
    addFunction( "divide", new GgadFuncDivide() );
    addFunction( "pow", new GgadFuncPow() );
    addFunction( "between", new GgadFuncBetween() );
    addFunction( "compare", new GgadFuncCompare() );
    addFunction( "any", new GgadFuncAny() );
    addFunction( "pi", new GgadFuncPi() );
    addFunction( "equal", new GgadFuncEqual() );
    addFunction( "notequal", new GgadFuncNotEqual() );
    addFunction( "and", new GgadFuncAnd() );
    addFunction( "or", new GgadFuncOr() );
    addFunction( "not", new GgadFuncNot() );
    addFunction( "rand", new GgadFuncRand() );
    addFunction( "less", new GgadFuncLess() );
    addFunction( "greater", new GgadFuncGreater() );
    addFunction( "greaterequal", new GgadFuncGreaterEqual() );
    addFunction( "round", new GgadFuncRound() );
}

