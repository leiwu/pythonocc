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
%module TopoDS

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


%include TopoDS_dependencies.i


%include TopoDS_headers.i




%nodefaultctor Handle_TopoDS_TShape;
class Handle_TopoDS_TShape : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_TopoDS_TShape();
		%feature("autodoc", "1");
		Handle_TopoDS_TShape();
		%feature("autodoc", "1");
		Handle_TopoDS_TShape(const Handle_TopoDS_TShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_TShape(const TopoDS_TShape *anItem);
		%feature("autodoc", "1");
		Handle_TopoDS_TShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopoDS_TShape {
	TopoDS_TShape* GetObject() {
	return (TopoDS_TShape*)$self->Access();
	}
};

%nodefaultctor Handle_TopoDS_TVertex;
class Handle_TopoDS_TVertex : public Handle_TopoDS_TShape {
	public:
		%feature("autodoc", "1");
		~Handle_TopoDS_TVertex();
		%feature("autodoc", "1");
		Handle_TopoDS_TVertex();
		%feature("autodoc", "1");
		Handle_TopoDS_TVertex(const Handle_TopoDS_TVertex &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_TVertex(const TopoDS_TVertex *anItem);
		%feature("autodoc", "1");
		Handle_TopoDS_TVertex const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopoDS_TVertex {
	TopoDS_TVertex* GetObject() {
	return (TopoDS_TVertex*)$self->Access();
	}
};

%nodefaultctor Handle_TopoDS_FrozenShape;
class Handle_TopoDS_FrozenShape : public Handle_Standard_DomainError {
	public:
		%feature("autodoc", "1");
		~Handle_TopoDS_FrozenShape();
		%feature("autodoc", "1");
		Handle_TopoDS_FrozenShape();
		%feature("autodoc", "1");
		Handle_TopoDS_FrozenShape(const Handle_TopoDS_FrozenShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_FrozenShape(const TopoDS_FrozenShape *anItem);
		%feature("autodoc", "1");
		Handle_TopoDS_FrozenShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopoDS_FrozenShape {
	TopoDS_FrozenShape* GetObject() {
	return (TopoDS_FrozenShape*)$self->Access();
	}
};

%nodefaultctor Handle_TopoDS_ListNodeOfListOfShape;
class Handle_TopoDS_ListNodeOfListOfShape : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_TopoDS_ListNodeOfListOfShape();
		%feature("autodoc", "1");
		Handle_TopoDS_ListNodeOfListOfShape();
		%feature("autodoc", "1");
		Handle_TopoDS_ListNodeOfListOfShape(const Handle_TopoDS_ListNodeOfListOfShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_ListNodeOfListOfShape(const TopoDS_ListNodeOfListOfShape *anItem);
		%feature("autodoc", "1");
		Handle_TopoDS_ListNodeOfListOfShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopoDS_ListNodeOfListOfShape {
	TopoDS_ListNodeOfListOfShape* GetObject() {
	return (TopoDS_ListNodeOfListOfShape*)$self->Access();
	}
};

%nodefaultctor Handle_TopoDS_TFace;
class Handle_TopoDS_TFace : public Handle_TopoDS_TShape {
	public:
		%feature("autodoc", "1");
		~Handle_TopoDS_TFace();
		%feature("autodoc", "1");
		Handle_TopoDS_TFace();
		%feature("autodoc", "1");
		Handle_TopoDS_TFace(const Handle_TopoDS_TFace &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_TFace(const TopoDS_TFace *anItem);
		%feature("autodoc", "1");
		Handle_TopoDS_TFace const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopoDS_TFace {
	TopoDS_TFace* GetObject() {
	return (TopoDS_TFace*)$self->Access();
	}
};

%nodefaultctor Handle_TopoDS_TCompound;
class Handle_TopoDS_TCompound : public Handle_TopoDS_TShape {
	public:
		%feature("autodoc", "1");
		~Handle_TopoDS_TCompound();
		%feature("autodoc", "1");
		Handle_TopoDS_TCompound();
		%feature("autodoc", "1");
		Handle_TopoDS_TCompound(const Handle_TopoDS_TCompound &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_TCompound(const TopoDS_TCompound *anItem);
		%feature("autodoc", "1");
		Handle_TopoDS_TCompound const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopoDS_TCompound {
	TopoDS_TCompound* GetObject() {
	return (TopoDS_TCompound*)$self->Access();
	}
};

%nodefaultctor Handle_TopoDS_UnCompatibleShapes;
class Handle_TopoDS_UnCompatibleShapes : public Handle_Standard_DomainError {
	public:
		%feature("autodoc", "1");
		~Handle_TopoDS_UnCompatibleShapes();
		%feature("autodoc", "1");
		Handle_TopoDS_UnCompatibleShapes();
		%feature("autodoc", "1");
		Handle_TopoDS_UnCompatibleShapes(const Handle_TopoDS_UnCompatibleShapes &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_UnCompatibleShapes(const TopoDS_UnCompatibleShapes *anItem);
		%feature("autodoc", "1");
		Handle_TopoDS_UnCompatibleShapes const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopoDS_UnCompatibleShapes {
	TopoDS_UnCompatibleShapes* GetObject() {
	return (TopoDS_UnCompatibleShapes*)$self->Access();
	}
};

%nodefaultctor Handle_TopoDS_HShape;
class Handle_TopoDS_HShape : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_TopoDS_HShape();
		%feature("autodoc", "1");
		Handle_TopoDS_HShape();
		%feature("autodoc", "1");
		Handle_TopoDS_HShape(const Handle_TopoDS_HShape &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_HShape(const TopoDS_HShape *anItem);
		%feature("autodoc", "1");
		Handle_TopoDS_HShape const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopoDS_HShape {
	TopoDS_HShape* GetObject() {
	return (TopoDS_HShape*)$self->Access();
	}
};

%nodefaultctor Handle_TopoDS_TEdge;
class Handle_TopoDS_TEdge : public Handle_TopoDS_TShape {
	public:
		%feature("autodoc", "1");
		~Handle_TopoDS_TEdge();
		%feature("autodoc", "1");
		Handle_TopoDS_TEdge();
		%feature("autodoc", "1");
		Handle_TopoDS_TEdge(const Handle_TopoDS_TEdge &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_TEdge(const TopoDS_TEdge *anItem);
		%feature("autodoc", "1");
		Handle_TopoDS_TEdge const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopoDS_TEdge {
	TopoDS_TEdge* GetObject() {
	return (TopoDS_TEdge*)$self->Access();
	}
};

%nodefaultctor Handle_TopoDS_TShell;
class Handle_TopoDS_TShell : public Handle_TopoDS_TShape {
	public:
		%feature("autodoc", "1");
		~Handle_TopoDS_TShell();
		%feature("autodoc", "1");
		Handle_TopoDS_TShell();
		%feature("autodoc", "1");
		Handle_TopoDS_TShell(const Handle_TopoDS_TShell &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_TShell(const TopoDS_TShell *anItem);
		%feature("autodoc", "1");
		Handle_TopoDS_TShell const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopoDS_TShell {
	TopoDS_TShell* GetObject() {
	return (TopoDS_TShell*)$self->Access();
	}
};

%nodefaultctor Handle_TopoDS_TCompSolid;
class Handle_TopoDS_TCompSolid : public Handle_TopoDS_TShape {
	public:
		%feature("autodoc", "1");
		~Handle_TopoDS_TCompSolid();
		%feature("autodoc", "1");
		Handle_TopoDS_TCompSolid();
		%feature("autodoc", "1");
		Handle_TopoDS_TCompSolid(const Handle_TopoDS_TCompSolid &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_TCompSolid(const TopoDS_TCompSolid *anItem);
		%feature("autodoc", "1");
		Handle_TopoDS_TCompSolid const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopoDS_TCompSolid {
	TopoDS_TCompSolid* GetObject() {
	return (TopoDS_TCompSolid*)$self->Access();
	}
};

%nodefaultctor Handle_TopoDS_TSolid;
class Handle_TopoDS_TSolid : public Handle_TopoDS_TShape {
	public:
		%feature("autodoc", "1");
		~Handle_TopoDS_TSolid();
		%feature("autodoc", "1");
		Handle_TopoDS_TSolid();
		%feature("autodoc", "1");
		Handle_TopoDS_TSolid(const Handle_TopoDS_TSolid &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_TSolid(const TopoDS_TSolid *anItem);
		%feature("autodoc", "1");
		Handle_TopoDS_TSolid const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopoDS_TSolid {
	TopoDS_TSolid* GetObject() {
	return (TopoDS_TSolid*)$self->Access();
	}
};

%nodefaultctor Handle_TopoDS_TWire;
class Handle_TopoDS_TWire : public Handle_TopoDS_TShape {
	public:
		%feature("autodoc", "1");
		~Handle_TopoDS_TWire();
		%feature("autodoc", "1");
		Handle_TopoDS_TWire();
		%feature("autodoc", "1");
		Handle_TopoDS_TWire(const Handle_TopoDS_TWire &aHandle);
		%feature("autodoc", "1");
		Handle_TopoDS_TWire(const TopoDS_TWire *anItem);
		%feature("autodoc", "1");
		Handle_TopoDS_TWire const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TopoDS_TWire {
	TopoDS_TWire* GetObject() {
	return (TopoDS_TWire*)$self->Access();
	}
};

%nodefaultctor TopoDS_Shape;
class TopoDS_Shape {
	public:
		%feature("autodoc", "1");
		~TopoDS_Shape();
		%feature("autodoc", "1");
		TopoDS_Shape();
		%feature("autodoc", "1");
		Standard_Boolean IsNull() const;
		%feature("autodoc", "1");
		void Nullify();
		%feature("autodoc", "1");
		const TopLoc_Location & Location() const;
		%feature("autodoc", "1");
		void Location(const TopLoc_Location &Loc);
		%feature("autodoc", "1");
		TopoDS_Shape Located(const TopLoc_Location &Loc) const;
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation() const;
		%feature("autodoc", "1");
		void Orientation(const TopAbs_Orientation Orient);
		%feature("autodoc", "1");
		TopoDS_Shape Oriented(const TopAbs_Orientation Or) const;
		%feature("autodoc", "1");
		const Handle_TopoDS_TShape & TShape() const;
		%feature("autodoc", "1");
		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		Standard_Boolean Free() const;
		%feature("autodoc", "1");
		void Free(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean Modified() const;
		%feature("autodoc", "1");
		void Modified(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean Checked() const;
		%feature("autodoc", "1");
		void Checked(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean Orientable() const;
		%feature("autodoc", "1");
		void Orientable(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean Closed() const;
		%feature("autodoc", "1");
		void Closed(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean Infinite() const;
		%feature("autodoc", "1");
		void Infinite(const Standard_Boolean B);
		%feature("autodoc", "1");
		Standard_Boolean Convex() const;
		%feature("autodoc", "1");
		void Convex(const Standard_Boolean B);
		%feature("autodoc", "1");
		void Move(const TopLoc_Location &position);
		%feature("autodoc", "1");
		TopoDS_Shape Moved(const TopLoc_Location &position) const;
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		TopoDS_Shape Reversed() const;
		%feature("autodoc", "1");
		void Complement();
		%feature("autodoc", "1");
		TopoDS_Shape Complemented() const;
		%feature("autodoc", "1");
		void Compose(const TopAbs_Orientation Orient);
		%feature("autodoc", "1");
		TopoDS_Shape Composed(const TopAbs_Orientation Orient) const;
		%feature("autodoc", "1");
		Standard_Boolean IsPartner(const TopoDS_Shape &other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsSame(const TopoDS_Shape &other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const TopoDS_Shape &other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsNotEqual(const TopoDS_Shape &other) const;
		%feature("autodoc", "1");
		Standard_Boolean operator!=(const TopoDS_Shape &other) const;
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Standard_Integer Upper) const;
		%feature("autodoc", "1");
		void EmptyCopy();
		%feature("autodoc", "1");
		TopoDS_Shape EmptyCopied() const;
		%feature("autodoc", "1");
		void TShape(const Handle_TopoDS_TShape &TS);

};

%nodefaultctor TopoDS_Compound;
class TopoDS_Compound : public TopoDS_Shape {
	public:
		%feature("autodoc", "1");
		~TopoDS_Compound();
		%feature("autodoc", "1");
		TopoDS_Compound();

};

%nodefaultctor TopoDS_HShape;
class TopoDS_HShape : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TopoDS_HShape();
		%feature("autodoc", "1");
		TopoDS_HShape(const TopoDS_Shape &aShape);
		%feature("autodoc", "1");
		void Shape(const TopoDS_Shape &aShape);
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape() const;
		%feature("autodoc", "1");
		TopoDS_Shape & ChangeShape();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TopoDS_HShape();

};
%extend TopoDS_HShape {
	Handle_TopoDS_HShape GetHandle() {
	return *(Handle_TopoDS_HShape*) &$self;
	}
};

%nodefaultctor TopoDS_ListNodeOfListOfShape;
class TopoDS_ListNodeOfListOfShape : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TopoDS_ListNodeOfListOfShape(const TopoDS_Shape &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TopoDS_ListNodeOfListOfShape();

};
%extend TopoDS_ListNodeOfListOfShape {
	Handle_TopoDS_ListNodeOfListOfShape GetHandle() {
	return *(Handle_TopoDS_ListNodeOfListOfShape*) &$self;
	}
};

%nodefaultctor TopoDS_FrozenShape;
class TopoDS_FrozenShape : public Standard_DomainError {
	public:
		%feature("autodoc", "1");
		TopoDS_FrozenShape();
		%feature("autodoc", "1");
		TopoDS_FrozenShape(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_TopoDS_FrozenShape NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TopoDS_FrozenShape();

};
%extend TopoDS_FrozenShape {
	Handle_TopoDS_FrozenShape GetHandle() {
	return *(Handle_TopoDS_FrozenShape*) &$self;
	}
};

%nodefaultctor TopoDS_Vertex;
class TopoDS_Vertex : public TopoDS_Shape {
	public:
		%feature("autodoc", "1");
		~TopoDS_Vertex();
		%feature("autodoc", "1");
		TopoDS_Vertex();

};

%nodefaultctor TopoDS_Iterator;
class TopoDS_Iterator {
	public:
		%feature("autodoc", "1");
		~TopoDS_Iterator();
		%feature("autodoc", "1");
		TopoDS_Iterator();
		%feature("autodoc", "1");
		TopoDS_Iterator(const TopoDS_Shape &S, const Standard_Boolean cumOri=1, const Standard_Boolean cumLoc=1);
		%feature("autodoc", "1");
		void Initialize(const TopoDS_Shape &S, const Standard_Boolean cumOri=1, const Standard_Boolean cumLoc=1);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		const TopoDS_Shape & Value() const;

};

%nodefaultctor TopoDS_TShape;
class TopoDS_TShape : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Standard_Boolean Free() const;
		%feature("autodoc", "1");
		void Free(const Standard_Boolean F);
		%feature("autodoc", "1");
		Standard_Boolean Modified() const;
		%feature("autodoc", "1");
		void Modified(const Standard_Boolean M);
		%feature("autodoc", "1");
		Standard_Boolean Checked() const;
		%feature("autodoc", "1");
		void Checked(const Standard_Boolean C);
		%feature("autodoc", "1");
		Standard_Boolean Orientable() const;
		%feature("autodoc", "1");
		void Orientable(const Standard_Boolean C);
		%feature("autodoc", "1");
		Standard_Boolean Closed() const;
		%feature("autodoc", "1");
		void Closed(const Standard_Boolean C);
		%feature("autodoc", "1");
		Standard_Boolean Infinite() const;
		%feature("autodoc", "1");
		void Infinite(const Standard_Boolean C);
		%feature("autodoc", "1");
		Standard_Boolean Convex() const;
		%feature("autodoc", "1");
		void Convex(const Standard_Boolean C);
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		virtual		Handle_TopoDS_TShape EmptyCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopoDS_TShape {
	Handle_TopoDS_TShape GetHandle() {
	return *(Handle_TopoDS_TShape*) &$self;
	}
};

%nodefaultctor TopoDS_Builder;
class TopoDS_Builder {
	public:
		%feature("autodoc", "1");
		~TopoDS_Builder();
		%feature("autodoc", "1");
		void MakeWire(TopoDS_Wire & W) const;
		%feature("autodoc", "1");
		void MakeCompound(TopoDS_Compound & C) const;
		%feature("autodoc", "1");
		void Add(TopoDS_Shape & S, const TopoDS_Shape &C) const;
		%feature("autodoc", "1");
		void Remove(TopoDS_Shape & S, const TopoDS_Shape &C) const;

};

%nodefaultctor TopoDS_CompSolid;
class TopoDS_CompSolid : public TopoDS_Shape {
	public:
		%feature("autodoc", "1");
		~TopoDS_CompSolid();
		%feature("autodoc", "1");
		TopoDS_CompSolid();

};

%nodefaultctor TopoDS_ListOfShape;
class TopoDS_ListOfShape {
	public:
		%feature("autodoc", "1");
		TopoDS_ListOfShape();
		%feature("autodoc", "1");
		void Assign(const TopoDS_ListOfShape &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~TopoDS_ListOfShape();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const TopoDS_Shape &I);
		%feature("autodoc", "1");
		void Prepend(const TopoDS_Shape &I, TopoDS_ListIteratorOfListOfShape & theIt);
		%feature("autodoc", "1");
		void Prepend(TopoDS_ListOfShape & Other);
		%feature("autodoc", "1");
		void Append(const TopoDS_Shape &I);
		%feature("autodoc", "1");
		void Append(const TopoDS_Shape &I, TopoDS_ListIteratorOfListOfShape & theIt);
		%feature("autodoc", "1");
		void Append(TopoDS_ListOfShape & Other);
		%feature("autodoc", "1");
		TopoDS_Shape & First() const;
		%feature("autodoc", "1");
		TopoDS_Shape & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(TopoDS_ListIteratorOfListOfShape & It);
		%feature("autodoc", "1");
		void InsertBefore(const TopoDS_Shape &I, TopoDS_ListIteratorOfListOfShape & It);
		%feature("autodoc", "1");
		void InsertBefore(TopoDS_ListOfShape & Other, TopoDS_ListIteratorOfListOfShape & It);
		%feature("autodoc", "1");
		void InsertAfter(const TopoDS_Shape &I, TopoDS_ListIteratorOfListOfShape & It);
		%feature("autodoc", "1");
		void InsertAfter(TopoDS_ListOfShape & Other, TopoDS_ListIteratorOfListOfShape & It);

};

%nodefaultctor TopoDS_TWire;
class TopoDS_TWire : public TopoDS_TShape {
	public:
		%feature("autodoc", "1");
		TopoDS_TWire();
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		virtual		Handle_TopoDS_TShape EmptyCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TopoDS_TWire();

};
%extend TopoDS_TWire {
	Handle_TopoDS_TWire GetHandle() {
	return *(Handle_TopoDS_TWire*) &$self;
	}
};

%nodefaultctor TopoDS_Edge;
class TopoDS_Edge : public TopoDS_Shape {
	public:
		%feature("autodoc", "1");
		~TopoDS_Edge();
		%feature("autodoc", "1");
		TopoDS_Edge();

};

%nodefaultctor TopoDS_Shell;
class TopoDS_Shell : public TopoDS_Shape {
	public:
		%feature("autodoc", "1");
		~TopoDS_Shell();
		%feature("autodoc", "1");
		TopoDS_Shell();

};

%nodefaultctor TopoDS_UnCompatibleShapes;
class TopoDS_UnCompatibleShapes : public Standard_DomainError {
	public:
		%feature("autodoc", "1");
		TopoDS_UnCompatibleShapes();
		%feature("autodoc", "1");
		TopoDS_UnCompatibleShapes(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_TopoDS_UnCompatibleShapes NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TopoDS_UnCompatibleShapes();

};
%extend TopoDS_UnCompatibleShapes {
	Handle_TopoDS_UnCompatibleShapes GetHandle() {
	return *(Handle_TopoDS_UnCompatibleShapes*) &$self;
	}
};

%nodefaultctor TopoDS_ListIteratorOfListOfShape;
class TopoDS_ListIteratorOfListOfShape {
	public:
		%feature("autodoc", "1");
		~TopoDS_ListIteratorOfListOfShape();
		%feature("autodoc", "1");
		TopoDS_ListIteratorOfListOfShape();
		%feature("autodoc", "1");
		TopoDS_ListIteratorOfListOfShape(const TopoDS_ListOfShape &L);
		%feature("autodoc", "1");
		void Initialize(const TopoDS_ListOfShape &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		TopoDS_Shape & Value() const;

};

%nodefaultctor TopoDS_Solid;
class TopoDS_Solid : public TopoDS_Shape {
	public:
		%feature("autodoc", "1");
		~TopoDS_Solid();
		%feature("autodoc", "1");
		TopoDS_Solid();

};

%nodefaultctor TopoDS_TCompound;
class TopoDS_TCompound : public TopoDS_TShape {
	public:
		%feature("autodoc", "1");
		TopoDS_TCompound();
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		virtual		Handle_TopoDS_TShape EmptyCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TopoDS_TCompound();

};
%extend TopoDS_TCompound {
	Handle_TopoDS_TCompound GetHandle() {
	return *(Handle_TopoDS_TCompound*) &$self;
	}
};

%nodefaultctor TopoDS_TEdge;
class TopoDS_TEdge : public TopoDS_TShape {
	public:
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopoDS_TEdge {
	Handle_TopoDS_TEdge GetHandle() {
	return *(Handle_TopoDS_TEdge*) &$self;
	}
};

%nodefaultctor TopoDS;
class TopoDS {
	public:
		%feature("autodoc", "1");
		~TopoDS();
		%feature("autodoc", "1");
		TopoDS();
		%feature("autodoc", "1");
		const TopoDS_Vertex & Vertex(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		TopoDS_Vertex & Vertex(TopoDS_Shape & S);
		%feature("autodoc", "1");
		const TopoDS_Edge & Edge(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		TopoDS_Edge & Edge(TopoDS_Shape & S);
		%feature("autodoc", "1");
		const TopoDS_Wire & Wire(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		TopoDS_Wire & Wire(TopoDS_Shape & S);
		%feature("autodoc", "1");
		const TopoDS_Face & Face(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		TopoDS_Face & Face(TopoDS_Shape & S);
		%feature("autodoc", "1");
		const TopoDS_Shell & Shell(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		TopoDS_Shell & Shell(TopoDS_Shape & S);
		%feature("autodoc", "1");
		const TopoDS_Solid & Solid(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		TopoDS_Solid & Solid(TopoDS_Shape & S);
		%feature("autodoc", "1");
		const TopoDS_CompSolid & CompSolid(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		TopoDS_CompSolid & CompSolid(TopoDS_Shape & S);
		%feature("autodoc", "1");
		const TopoDS_Compound & Compound(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		TopoDS_Compound & Compound(TopoDS_Shape & S);

};

%nodefaultctor TopoDS_TShell;
class TopoDS_TShell : public TopoDS_TShape {
	public:
		%feature("autodoc", "1");
		TopoDS_TShell();
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		virtual		Handle_TopoDS_TShape EmptyCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TopoDS_TShell();

};
%extend TopoDS_TShell {
	Handle_TopoDS_TShell GetHandle() {
	return *(Handle_TopoDS_TShell*) &$self;
	}
};

%nodefaultctor TopoDS_TFace;
class TopoDS_TFace : public TopoDS_TShape {
	public:
		%feature("autodoc", "1");
		TopoDS_TFace();
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		virtual		Handle_TopoDS_TShape EmptyCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TopoDS_TFace();

};
%extend TopoDS_TFace {
	Handle_TopoDS_TFace GetHandle() {
	return *(Handle_TopoDS_TFace*) &$self;
	}
};

%nodefaultctor TopoDS_Builder3D;
class TopoDS_Builder3D : public TopoDS_Builder {
	public:
		%feature("autodoc", "1");
		~TopoDS_Builder3D();
		%feature("autodoc", "1");
		void MakeShell(TopoDS_Shell & S) const;
		%feature("autodoc", "1");
		void MakeSolid(TopoDS_Solid & S) const;
		%feature("autodoc", "1");
		void MakeCompSolid(TopoDS_CompSolid & C) const;

};

%nodefaultctor TopoDS_TCompSolid;
class TopoDS_TCompSolid : public TopoDS_TShape {
	public:
		%feature("autodoc", "1");
		TopoDS_TCompSolid();
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		virtual		Handle_TopoDS_TShape EmptyCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TopoDS_TCompSolid();

};
%extend TopoDS_TCompSolid {
	Handle_TopoDS_TCompSolid GetHandle() {
	return *(Handle_TopoDS_TCompSolid*) &$self;
	}
};

%nodefaultctor TopoDS_Wire;
class TopoDS_Wire : public TopoDS_Shape {
	public:
		%feature("autodoc", "1");
		~TopoDS_Wire();
		%feature("autodoc", "1");
		TopoDS_Wire();

};

%nodefaultctor TopoDS_TVertex;
class TopoDS_TVertex : public TopoDS_TShape {
	public:
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TopoDS_TVertex {
	Handle_TopoDS_TVertex GetHandle() {
	return *(Handle_TopoDS_TVertex*) &$self;
	}
};

%nodefaultctor TopoDS_Face;
class TopoDS_Face : public TopoDS_Shape {
	public:
		%feature("autodoc", "1");
		~TopoDS_Face();
		%feature("autodoc", "1");
		TopoDS_Face();

};

%nodefaultctor TopoDS_TSolid;
class TopoDS_TSolid : public TopoDS_TShape {
	public:
		%feature("autodoc", "1");
		TopoDS_TSolid();
		%feature("autodoc", "1");
		virtual		TopAbs_ShapeEnum ShapeType() const;
		%feature("autodoc", "1");
		virtual		Handle_TopoDS_TShape EmptyCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~TopoDS_TSolid();

};
%extend TopoDS_TSolid {
	Handle_TopoDS_TSolid GetHandle() {
	return *(Handle_TopoDS_TSolid*) &$self;
	}
};