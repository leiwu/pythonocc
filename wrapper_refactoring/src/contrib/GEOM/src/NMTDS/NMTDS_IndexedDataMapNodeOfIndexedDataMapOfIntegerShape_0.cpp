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
#include <NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape.hxx>

#ifndef _Standard_TypeMismatch_HeaderFile
#include <Standard_TypeMismatch.hxx>
#endif

#ifndef _TopoDS_Shape_HeaderFile
#include <TopoDS_Shape.hxx>
#endif
#ifndef _TColStd_MapIntegerHasher_HeaderFile
#include <TColStd_MapIntegerHasher.hxx>
#endif
#ifndef _NMTDS_IndexedDataMapOfIntegerShape_HeaderFile
#include <NMTDS_IndexedDataMapOfIntegerShape.hxx>
#endif
//NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape::~NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape() {}
 


Standard_EXPORT Handle_Standard_Type& NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape_Type_()
{

    static Handle_Standard_Type aType1 = STANDARD_TYPE(TCollection_MapNode);
  static Handle_Standard_Type aType2 = STANDARD_TYPE(MMgt_TShared);
  static Handle_Standard_Type aType3 = STANDARD_TYPE(Standard_Transient);
 

  static Handle_Standard_Transient _Ancestors[]= {aType1,aType2,aType3,NULL};
  static Handle_Standard_Type _aType = new Standard_Type("NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape",
			                                 sizeof(NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape),
			                                 1,
			                                 (Standard_Address)_Ancestors,
			                                 (Standard_Address)NULL);

  return _aType;
}


// DownCast method
//   allow safe downcasting
//
const Handle(NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape) Handle(NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape)::DownCast(const Handle(Standard_Transient)& AnObject) 
{
  Handle(NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape) _anOtherObject;

  if (!AnObject.IsNull()) {
     if (AnObject->IsKind(STANDARD_TYPE(NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape))) {
       _anOtherObject = Handle(NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape)((Handle(NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape)&)AnObject);
     }
  }

  return _anOtherObject ;
}
const Handle(Standard_Type)& NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape::DynamicType() const 
{ 
  return STANDARD_TYPE(NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape) ; 
}
//Standard_Boolean NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape::IsKind(const Handle(Standard_Type)& AType) const 
//{ 
//  return (STANDARD_TYPE(NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape) == AType || TCollection_MapNode::IsKind(AType)); 
//}
//Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape::~Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape() {}
#define TheKey Standard_Integer
#define TheKey_hxx <Standard_Integer.hxx>
#define TheItem TopoDS_Shape
#define TheItem_hxx <TopoDS_Shape.hxx>
#define Hasher TColStd_MapIntegerHasher
#define Hasher_hxx <TColStd_MapIntegerHasher.hxx>
#define TCollection_IndexedDataMapNode NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape
#define TCollection_IndexedDataMapNode_hxx <NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape.hxx>
#define Handle_TCollection_IndexedDataMapNode Handle_NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape
#define TCollection_IndexedDataMapNode_Type_() NMTDS_IndexedDataMapNodeOfIndexedDataMapOfIntegerShape_Type_()
#define TCollection_IndexedDataMap NMTDS_IndexedDataMapOfIntegerShape
#define TCollection_IndexedDataMap_hxx <NMTDS_IndexedDataMapOfIntegerShape.hxx>
#include <TCollection_IndexedDataMapNode.gxx>

