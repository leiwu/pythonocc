//  Copyright (C) 2007-2008  CEA/DEN, EDF R&D, OPEN CASCADE
//
//  Copyright (C) 2003-2007  OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN,
//  CEDRAT, EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
//
//  This library is free software; you can redistribute it and/or
//  modify it under the terms of the GNU Lesser General Public
//  License as published by the Free Software Foundation; either
//  version 2.1 of the License.
//
//  This library is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
//  Lesser General Public License for more details.
//
//  You should have received a copy of the GNU Lesser General Public
//  License along with this library; if not, write to the Free Software
//  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
//
//  See http://www.salome-platform.org/ or email : webmaster.salome@opencascade.com
//
#ifndef _GEOMAlgo_ShapeAlgo_HeaderFile
#define _GEOMAlgo_ShapeAlgo_HeaderFile

#ifndef _TopoDS_Shape_HeaderFile
#include <TopoDS_Shape.hxx>
#endif
#ifndef _Standard_Real_HeaderFile
#include <Standard_Real.hxx>
#endif
#ifndef _IntTools_Context_HeaderFile
#include <IntTools_Context.hxx>
#endif
#ifndef _GEOMAlgo_Algo_HeaderFile
#include <GEOMAlgo_Algo.hxx>
#endif
class TopoDS_Shape;


#ifndef _Standard_HeaderFile
#include <Standard.hxx>
#endif
#ifndef _Standard_Macro_HeaderFile
#include <Standard_Macro.hxx>
#endif


class GEOMAlgo_ShapeAlgo  : public GEOMAlgo_Algo {

public:

    void* operator new(size_t,void* anAddress) 
      {
        return anAddress;
      }
    void* operator new(size_t size) 
      { 
        return Standard::Allocate(size); 
      }
    void  operator delete(void *anAddress) 
      { 
        if (anAddress) Standard::Free((Standard_Address&)anAddress); 
      }
 // Methods PUBLIC
 // 


Standard_EXPORT   void SetShape(const TopoDS_Shape& aS) ;


Standard_EXPORT   void SetTolerance(const Standard_Real aT) ;


Standard_EXPORT  const TopoDS_Shape& Shape() const;


Standard_EXPORT   Standard_Real Tolerance() const;


Standard_EXPORT  const TopoDS_Shape& Result() const;





protected:

 // Methods PROTECTED
 // 


Standard_EXPORT GEOMAlgo_ShapeAlgo();
Standard_EXPORT virtual ~GEOMAlgo_ShapeAlgo();


 // Fields PROTECTED
 //
TopoDS_Shape myShape;
Standard_Real myTolerance;
TopoDS_Shape myResult;
IntTools_Context myContext;


private: 

 // Methods PRIVATE
 // 


 // Fields PRIVATE
 //


};





// other Inline functions and methods (like "C++: function call" methods)
//


#endif
