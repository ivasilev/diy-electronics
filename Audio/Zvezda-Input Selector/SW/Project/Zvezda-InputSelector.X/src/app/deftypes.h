//==============================================================================
// File:   deftypes.h
// Author: ivanvasilev
//
// Created on February 1, 2016, 8:42 PM
//==============================================================================

#ifndef DEFTYPES_H
#define	DEFTYPES_H

#ifdef	__cplusplus
extern "C" {
#endif

typedef int HRESULT;
#define L_OK              ((HRESULT)0)
#define L_INVALIDARG      ((HRESULT)-1)
#define L_FAIL            ((HRESULT)-2)
#define L_NO_MEM          ((HRESULT)-3)
#define L_NOTFOUND        ((HRESULT)-4)
#define L_UNSUPPORTED     ((HRESULT)-6)
#define L_WAIT            ((HRESULT)1)

#ifdef	__cplusplus
}
#endif

#endif	/* DEFTYPES_H */

