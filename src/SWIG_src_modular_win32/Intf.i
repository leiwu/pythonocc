/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.
*/
%module Intf

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i

#ifndef _Standard_TypeDef_HeaderFile
#define _Standard_TypeDef_HeaderFile
#define Standard_False (Standard_Boolean) 0
#define Standard_True  (Standard_Boolean) 1
#endif

/*
Exception handling
*/
%{#include <Standard_Failure.hxx>%}
%exception
{
    try
    {
        $action
    } 
    catch(Standard_Failure)
    {
        SWIG_exception(SWIG_RuntimeError,Standard_Failure::Caught()->DynamicType()->Name());
    }
}

/*
Standard_Real & function transformation
*/
%typemap(argout) Standard_Real &OutValue {
    PyObject *o, *o2, *o3;
    o = PyFloat_FromDouble(*$1);
    if ((!$result) || ($result == Py_None)) {
        $result = o;
    } else {
        if (!PyTuple_Check($result)) {
            PyObject *o2 = $result;
            $result = PyTuple_New(1);
            PyTuple_SetItem($result,0,o2);
        }
        o3 = PyTuple_New(1);
        PyTuple_SetItem(o3,0,o);
        o2 = $result;
        $result = PySequence_Concat(o2,o3);
        Py_DECREF(o2);
        Py_DECREF(o3);
    }
}

%typemap(in,numinputs=0) Standard_Real &OutValue(Standard_Real temp) {
    $1 = &temp;
}


%include Intf_dependencies.i


%include Intf_headers.i


enum Intf_PIType {
	Intf_EXTERNAL,
	Intf_FACE,
	Intf_EDGE,
	Intf_VERTEX,
	};



%nodefaultctor Handle_Intf_SequenceNodeOfSeqOfTangentZone;
class Handle_Intf_SequenceNodeOfSeqOfTangentZone : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		~Handle_Intf_SequenceNodeOfSeqOfTangentZone();
		%feature("autodoc", "1");
		Handle_Intf_SequenceNodeOfSeqOfTangentZone();
		%feature("autodoc", "1");
		Handle_Intf_SequenceNodeOfSeqOfTangentZone(const Handle_Intf_SequenceNodeOfSeqOfTangentZone &aHandle);
		%feature("autodoc", "1");
		Handle_Intf_SequenceNodeOfSeqOfTangentZone(const Intf_SequenceNodeOfSeqOfTangentZone *anItem);
		%feature("autodoc", "1");
		Handle_Intf_SequenceNodeOfSeqOfTangentZone const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Intf_SequenceNodeOfSeqOfTangentZone {
	Intf_SequenceNodeOfSeqOfTangentZone* GetObject() {
	return (Intf_SequenceNodeOfSeqOfTangentZone*)$self->Access();
	}
};

%nodefaultctor Handle_Intf_SequenceNodeOfSeqOfSectionLine;
class Handle_Intf_SequenceNodeOfSeqOfSectionLine : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		~Handle_Intf_SequenceNodeOfSeqOfSectionLine();
		%feature("autodoc", "1");
		Handle_Intf_SequenceNodeOfSeqOfSectionLine();
		%feature("autodoc", "1");
		Handle_Intf_SequenceNodeOfSeqOfSectionLine(const Handle_Intf_SequenceNodeOfSeqOfSectionLine &aHandle);
		%feature("autodoc", "1");
		Handle_Intf_SequenceNodeOfSeqOfSectionLine(const Intf_SequenceNodeOfSeqOfSectionLine *anItem);
		%feature("autodoc", "1");
		Handle_Intf_SequenceNodeOfSeqOfSectionLine const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Intf_SequenceNodeOfSeqOfSectionLine {
	Intf_SequenceNodeOfSeqOfSectionLine* GetObject() {
	return (Intf_SequenceNodeOfSeqOfSectionLine*)$self->Access();
	}
};

%nodefaultctor Handle_Intf_SequenceNodeOfSeqOfSectionPoint;
class Handle_Intf_SequenceNodeOfSeqOfSectionPoint : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		~Handle_Intf_SequenceNodeOfSeqOfSectionPoint();
		%feature("autodoc", "1");
		Handle_Intf_SequenceNodeOfSeqOfSectionPoint();
		%feature("autodoc", "1");
		Handle_Intf_SequenceNodeOfSeqOfSectionPoint(const Handle_Intf_SequenceNodeOfSeqOfSectionPoint &aHandle);
		%feature("autodoc", "1");
		Handle_Intf_SequenceNodeOfSeqOfSectionPoint(const Intf_SequenceNodeOfSeqOfSectionPoint *anItem);
		%feature("autodoc", "1");
		Handle_Intf_SequenceNodeOfSeqOfSectionPoint const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_Intf_SequenceNodeOfSeqOfSectionPoint {
	Intf_SequenceNodeOfSeqOfSectionPoint* GetObject() {
	return (Intf_SequenceNodeOfSeqOfSectionPoint*)$self->Access();
	}
};

%nodefaultctor Intf_SequenceNodeOfSeqOfSectionPoint;
class Intf_SequenceNodeOfSeqOfSectionPoint : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Intf_SequenceNodeOfSeqOfSectionPoint(const Intf_SectionPoint &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Intf_SectionPoint & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Intf_SequenceNodeOfSeqOfSectionPoint();

};
%extend Intf_SequenceNodeOfSeqOfSectionPoint {
	Handle_Intf_SequenceNodeOfSeqOfSectionPoint GetHandle() {
	return *(Handle_Intf_SequenceNodeOfSeqOfSectionPoint*) &$self;
	}
};

%nodefaultctor Intf_SequenceNodeOfSeqOfSectionLine;
class Intf_SequenceNodeOfSeqOfSectionLine : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Intf_SequenceNodeOfSeqOfSectionLine(const Intf_SectionLine &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Intf_SectionLine & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Intf_SequenceNodeOfSeqOfSectionLine();

};
%extend Intf_SequenceNodeOfSeqOfSectionLine {
	Handle_Intf_SequenceNodeOfSeqOfSectionLine GetHandle() {
	return *(Handle_Intf_SequenceNodeOfSeqOfSectionLine*) &$self;
	}
};

%nodefaultctor Intf_SectionPoint;
class Intf_SectionPoint {
	public:
		%feature("autodoc", "1");
		~Intf_SectionPoint();
		%feature("autodoc", "1");
		const gp_Pnt & Pnt() const;
		%feature("autodoc", "1");
		Standard_Real ParamOnFirst() const;
		%feature("autodoc", "1");
		Standard_Real ParamOnSecond() const;
		%feature("autodoc", "1");
		Intf_PIType TypeOnFirst() const;
		%feature("autodoc", "1");
		Intf_PIType TypeOnSecond() const;
		%feature("autodoc", "1");
		void InfoFirst(Intf_PIType & Dim, Standard_Integer & Add1, Standard_Integer & Add2, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void InfoFirst(Intf_PIType & Dim, Standard_Integer & Addr, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void InfoSecond(Intf_PIType & Dim, Standard_Integer & Add1, Standard_Integer & Add2, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void InfoSecond(Intf_PIType & Dim, Standard_Integer & Addr, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Real Incidence() const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const Intf_SectionPoint &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsOnSameEdge(const Intf_SectionPoint &Other) const;
		%feature("autodoc", "1");
		Intf_SectionPoint();
		%feature("autodoc", "1");
		Intf_SectionPoint(const gp_Pnt &Where, const Intf_PIType DimeO, const Standard_Integer AddrO1, const Standard_Integer AddrO2, const Standard_Real ParamO, const Intf_PIType DimeT, const Standard_Integer AddrT1, const Standard_Integer AddrT2, const Standard_Real ParamT, const Standard_Real Incid);
		%feature("autodoc", "1");
		Intf_SectionPoint(const gp_Pnt2d &Where, const Intf_PIType DimeO, const Standard_Integer AddrO1, const Standard_Real ParamO, const Intf_PIType DimeT, const Standard_Integer AddrT1, const Standard_Real ParamT, const Standard_Real Incid);
		%feature("autodoc", "1");
		void Merge(Intf_SectionPoint & Other);
		%feature("autodoc", "1");
		void Dump(const Standard_Integer Indent) const;

};

%nodefaultctor Intf_SeqOfTangentZone;
class Intf_SeqOfTangentZone : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Intf_SeqOfTangentZone();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~Intf_SeqOfTangentZone();
		%feature("autodoc", "1");
		const Intf_SeqOfTangentZone & Assign(const Intf_SeqOfTangentZone &Other);
		%feature("autodoc", "1");
		void Append(const Intf_TangentZone &T);
		%feature("autodoc", "1");
		void Append(Intf_SeqOfTangentZone & S);
		%feature("autodoc", "1");
		void Prepend(const Intf_TangentZone &T);
		%feature("autodoc", "1");
		void Prepend(Intf_SeqOfTangentZone & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Intf_TangentZone &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Intf_SeqOfTangentZone & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Intf_TangentZone &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Intf_SeqOfTangentZone & S);
		%feature("autodoc", "1");
		const Intf_TangentZone & First() const;
		%feature("autodoc", "1");
		const Intf_TangentZone & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Intf_SeqOfTangentZone & S);
		%feature("autodoc", "1");
		const Intf_TangentZone & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Intf_TangentZone & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Intf_TangentZone &I);
		%feature("autodoc", "1");
		Intf_TangentZone & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Intf_TangentZone & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};

%nodefaultctor Intf_SeqOfSectionLine;
class Intf_SeqOfSectionLine : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Intf_SeqOfSectionLine();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~Intf_SeqOfSectionLine();
		%feature("autodoc", "1");
		const Intf_SeqOfSectionLine & Assign(const Intf_SeqOfSectionLine &Other);
		%feature("autodoc", "1");
		void Append(const Intf_SectionLine &T);
		%feature("autodoc", "1");
		void Append(Intf_SeqOfSectionLine & S);
		%feature("autodoc", "1");
		void Prepend(const Intf_SectionLine &T);
		%feature("autodoc", "1");
		void Prepend(Intf_SeqOfSectionLine & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Intf_SectionLine &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Intf_SeqOfSectionLine & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Intf_SectionLine &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Intf_SeqOfSectionLine & S);
		%feature("autodoc", "1");
		const Intf_SectionLine & First() const;
		%feature("autodoc", "1");
		const Intf_SectionLine & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Intf_SeqOfSectionLine & S);
		%feature("autodoc", "1");
		const Intf_SectionLine & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Intf_SectionLine & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Intf_SectionLine &I);
		%feature("autodoc", "1");
		Intf_SectionLine & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Intf_SectionLine & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};

%nodefaultctor Intf_Interference;
class Intf_Interference {
	public:
		%feature("autodoc", "1");
		~Intf_Interference();
		%feature("autodoc", "1");
		Standard_Integer NbSectionPoints() const;
		%feature("autodoc", "1");
		const Intf_SectionPoint & PntValue(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer NbSectionLines() const;
		%feature("autodoc", "1");
		const Intf_SectionLine & LineValue(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer NbTangentZones() const;
		%feature("autodoc", "1");
		const Intf_TangentZone & ZoneValue(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Real GetTolerance() const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Intf_SectionPoint &ThePnt) const;
		%feature("autodoc", "1");
		Standard_Boolean Insert(const Intf_TangentZone &TheZone);
		%feature("autodoc", "1");
		void Insert(const Intf_SectionPoint &pdeb, const Intf_SectionPoint &pfin);
		%feature("autodoc", "1");
		void Dump() const;

};

%nodefaultctor Intf_SequenceNodeOfSeqOfTangentZone;
class Intf_SequenceNodeOfSeqOfTangentZone : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Intf_SequenceNodeOfSeqOfTangentZone(const Intf_TangentZone &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Intf_TangentZone & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~Intf_SequenceNodeOfSeqOfTangentZone();

};
%extend Intf_SequenceNodeOfSeqOfTangentZone {
	Handle_Intf_SequenceNodeOfSeqOfTangentZone GetHandle() {
	return *(Handle_Intf_SequenceNodeOfSeqOfTangentZone*) &$self;
	}
};

%nodefaultctor Intf_SeqOfSectionPoint;
class Intf_SeqOfSectionPoint : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		Intf_SeqOfSectionPoint();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~Intf_SeqOfSectionPoint();
		%feature("autodoc", "1");
		const Intf_SeqOfSectionPoint & Assign(const Intf_SeqOfSectionPoint &Other);
		%feature("autodoc", "1");
		void Append(const Intf_SectionPoint &T);
		%feature("autodoc", "1");
		void Append(Intf_SeqOfSectionPoint & S);
		%feature("autodoc", "1");
		void Prepend(const Intf_SectionPoint &T);
		%feature("autodoc", "1");
		void Prepend(Intf_SeqOfSectionPoint & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Intf_SectionPoint &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, Intf_SeqOfSectionPoint & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Intf_SectionPoint &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, Intf_SeqOfSectionPoint & S);
		%feature("autodoc", "1");
		const Intf_SectionPoint & First() const;
		%feature("autodoc", "1");
		const Intf_SectionPoint & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, Intf_SeqOfSectionPoint & S);
		%feature("autodoc", "1");
		const Intf_SectionPoint & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Intf_SectionPoint & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Intf_SectionPoint &I);
		%feature("autodoc", "1");
		Intf_SectionPoint & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Intf_SectionPoint & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};

%nodefaultctor Intf_Array1OfLin;
class Intf_Array1OfLin {
	public:
		%feature("autodoc", "1");
		Intf_Array1OfLin(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		Intf_Array1OfLin(const gp_Lin &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const gp_Lin &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~Intf_Array1OfLin();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const Intf_Array1OfLin & Assign(const Intf_Array1OfLin &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Lin &Value);
		%feature("autodoc", "1");
		const gp_Lin & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_Lin & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Lin & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		gp_Lin & operator()(const Standard_Integer Index);

};

%nodefaultctor Intf_TangentZone;
class Intf_TangentZone {
	public:
		%feature("autodoc", "1");
		~Intf_TangentZone();
		%feature("autodoc", "1");
		Standard_Integer NumberOfPoints() const;
		%feature("autodoc", "1");
		const Intf_SectionPoint & GetPoint(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const Intf_TangentZone &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Intf_SectionPoint &ThePI) const;
		%feature("autodoc", "1");
		void ParamOnFirst(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void ParamOnSecond(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void InfoFirst(Standard_Integer & segMin, Standard_Real &OutValue, Standard_Integer & segMax, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void InfoSecond(Standard_Integer & segMin, Standard_Real &OutValue, Standard_Integer & segMax, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean RangeContains(const Intf_SectionPoint &ThePI) const;
		%feature("autodoc", "1");
		Standard_Boolean HasCommonRange(const Intf_TangentZone &Other) const;
		%feature("autodoc", "1");
		Intf_TangentZone();
		%feature("autodoc", "1");
		Intf_TangentZone(const Intf_TangentZone &Other);
		%feature("autodoc", "1");
		void Append(const Intf_SectionPoint &Pi);
		%feature("autodoc", "1");
		void Append(const Intf_TangentZone &Tzi);
		%feature("autodoc", "1");
		Standard_Boolean Insert(const Intf_SectionPoint &Pi);
		%feature("autodoc", "1");
		void PolygonInsert(const Intf_SectionPoint &Pi);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Intf_SectionPoint &Pi);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Intf_SectionPoint &Pi);
		%feature("autodoc", "1");
		void Dump(const Standard_Integer Indent) const;

};

%nodefaultctor Intf_SectionLine;
class Intf_SectionLine {
	public:
		%feature("autodoc", "1");
		~Intf_SectionLine();
		%feature("autodoc", "1");
		Standard_Integer NumberOfPoints() const;
		%feature("autodoc", "1");
		const Intf_SectionPoint & GetPoint(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Boolean IsClosed() const;
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Intf_SectionPoint &ThePI) const;
		%feature("autodoc", "1");
		Standard_Integer IsEnd(const Intf_SectionPoint &ThePI) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const Intf_SectionLine &Other) const;
		%feature("autodoc", "1");
		Intf_SectionLine();
		%feature("autodoc", "1");
		Intf_SectionLine(const Intf_SectionLine &Other);
		%feature("autodoc", "1");
		void Append(const Intf_SectionPoint &Pi);
		%feature("autodoc", "1");
		void Append(Intf_SectionLine & LS);
		%feature("autodoc", "1");
		void Prepend(const Intf_SectionPoint &Pi);
		%feature("autodoc", "1");
		void Prepend(Intf_SectionLine & LS);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void Close();
		%feature("autodoc", "1");
		void Dump(const Standard_Integer Indent) const;

};

%nodefaultctor Intf_Tool;
class Intf_Tool {
	public:
		%feature("autodoc", "1");
		~Intf_Tool();
		%feature("autodoc", "1");
		Intf_Tool();
		%feature("autodoc", "1");
		void Lin2dBox(const gp_Lin2d &theLin2d, const Bnd_Box2d &bounding, Bnd_Box2d & boxLin);
		%feature("autodoc", "1");
		void Hypr2dBox(const gp_Hypr2d &theHypr2d, const Bnd_Box2d &bounding, Bnd_Box2d & boxHypr);
		%feature("autodoc", "1");
		void Parab2dBox(const gp_Parab2d &theParab2d, const Bnd_Box2d &bounding, Bnd_Box2d & boxHypr);
		%feature("autodoc", "1");
		void LinBox(const gp_Lin &theLin, const Bnd_Box &bounding, Bnd_Box & boxLin);
		%feature("autodoc", "1");
		void HyprBox(const gp_Hypr &theHypr, const Bnd_Box &bounding, Bnd_Box & boxHypr);
		%feature("autodoc", "1");
		void ParabBox(const gp_Parab &theParab, const Bnd_Box &bounding, Bnd_Box & boxHypr);
		%feature("autodoc", "1");
		Standard_Integer NbSegments() const;
		%feature("autodoc", "1");
		Standard_Real BeginParam(const Standard_Integer SegmentNum) const;
		%feature("autodoc", "1");
		Standard_Real EndParam(const Standard_Integer SegmentNum) const;

};

%nodefaultctor Intf;
class Intf {
	public:
		%feature("autodoc", "1");
		~Intf();
		%feature("autodoc", "1");
		Intf();
		%feature("autodoc", "1");
		void PlaneEquation(const gp_Pnt &P1, const gp_Pnt &P2, const gp_Pnt &P3, gp_XYZ & NormalVector, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean Contain(const gp_Pnt &P1, const gp_Pnt &P2, const gp_Pnt &P3, const gp_Pnt &ThePnt);

};