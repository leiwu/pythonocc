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
%module BinTObjDrivers

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


%include BinTObjDrivers_dependencies.i


%include BinTObjDrivers_headers.i




%nodefaultctor Handle_BinTObjDrivers_DocumentStorageDriver;
class Handle_BinTObjDrivers_DocumentStorageDriver : public Handle_BinLDrivers_DocumentStorageDriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinTObjDrivers_DocumentStorageDriver();
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_DocumentStorageDriver();
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_DocumentStorageDriver(const Handle_BinTObjDrivers_DocumentStorageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_DocumentStorageDriver(const BinTObjDrivers_DocumentStorageDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_DocumentStorageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinTObjDrivers_DocumentStorageDriver {
	BinTObjDrivers_DocumentStorageDriver* GetObject() {
	return (BinTObjDrivers_DocumentStorageDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinTObjDrivers_ObjectDriver;
class Handle_BinTObjDrivers_ObjectDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinTObjDrivers_ObjectDriver();
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_ObjectDriver();
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_ObjectDriver(const Handle_BinTObjDrivers_ObjectDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_ObjectDriver(const BinTObjDrivers_ObjectDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_ObjectDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinTObjDrivers_ObjectDriver {
	BinTObjDrivers_ObjectDriver* GetObject() {
	return (BinTObjDrivers_ObjectDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinTObjDrivers_ReferenceDriver;
class Handle_BinTObjDrivers_ReferenceDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinTObjDrivers_ReferenceDriver();
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_ReferenceDriver();
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_ReferenceDriver(const Handle_BinTObjDrivers_ReferenceDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_ReferenceDriver(const BinTObjDrivers_ReferenceDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_ReferenceDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinTObjDrivers_ReferenceDriver {
	BinTObjDrivers_ReferenceDriver* GetObject() {
	return (BinTObjDrivers_ReferenceDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinTObjDrivers_ModelDriver;
class Handle_BinTObjDrivers_ModelDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinTObjDrivers_ModelDriver();
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_ModelDriver();
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_ModelDriver(const Handle_BinTObjDrivers_ModelDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_ModelDriver(const BinTObjDrivers_ModelDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_ModelDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinTObjDrivers_ModelDriver {
	BinTObjDrivers_ModelDriver* GetObject() {
	return (BinTObjDrivers_ModelDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinTObjDrivers_DocumentRetrievalDriver;
class Handle_BinTObjDrivers_DocumentRetrievalDriver : public Handle_BinLDrivers_DocumentRetrievalDriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinTObjDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_DocumentRetrievalDriver(const Handle_BinTObjDrivers_DocumentRetrievalDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_DocumentRetrievalDriver(const BinTObjDrivers_DocumentRetrievalDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_DocumentRetrievalDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinTObjDrivers_DocumentRetrievalDriver {
	BinTObjDrivers_DocumentRetrievalDriver* GetObject() {
	return (BinTObjDrivers_DocumentRetrievalDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinTObjDrivers_XYZDriver;
class Handle_BinTObjDrivers_XYZDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinTObjDrivers_XYZDriver();
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_XYZDriver();
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_XYZDriver(const Handle_BinTObjDrivers_XYZDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_XYZDriver(const BinTObjDrivers_XYZDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_XYZDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinTObjDrivers_XYZDriver {
	BinTObjDrivers_XYZDriver* GetObject() {
	return (BinTObjDrivers_XYZDriver*)$self->Access();
	}
};

%nodefaultctor Handle_BinTObjDrivers_IntSparseArrayDriver;
class Handle_BinTObjDrivers_IntSparseArrayDriver : public Handle_BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		~Handle_BinTObjDrivers_IntSparseArrayDriver();
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_IntSparseArrayDriver();
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_IntSparseArrayDriver(const Handle_BinTObjDrivers_IntSparseArrayDriver &aHandle);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_IntSparseArrayDriver(const BinTObjDrivers_IntSparseArrayDriver *anItem);
		%feature("autodoc", "1");
		Handle_BinTObjDrivers_IntSparseArrayDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BinTObjDrivers_IntSparseArrayDriver {
	BinTObjDrivers_IntSparseArrayDriver* GetObject() {
	return (BinTObjDrivers_IntSparseArrayDriver*)$self->Access();
	}
};

%nodefaultctor BinTObjDrivers_ModelDriver;
class BinTObjDrivers_ModelDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinTObjDrivers_ModelDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinTObjDrivers_ModelDriver();

};
%extend BinTObjDrivers_ModelDriver {
	Handle_BinTObjDrivers_ModelDriver GetHandle() {
	return *(Handle_BinTObjDrivers_ModelDriver*) &$self;
	}
};

%nodefaultctor BinTObjDrivers_IntSparseArrayDriver;
class BinTObjDrivers_IntSparseArrayDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinTObjDrivers_IntSparseArrayDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, BinObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, BinObjMgt_Persistent & theTarget, BinObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinTObjDrivers_IntSparseArrayDriver();

};
%extend BinTObjDrivers_IntSparseArrayDriver {
	Handle_BinTObjDrivers_IntSparseArrayDriver GetHandle() {
	return *(Handle_BinTObjDrivers_IntSparseArrayDriver*) &$self;
	}
};

%nodefaultctor BinTObjDrivers_ReferenceDriver;
class BinTObjDrivers_ReferenceDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinTObjDrivers_ReferenceDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinTObjDrivers_ReferenceDriver();

};
%extend BinTObjDrivers_ReferenceDriver {
	Handle_BinTObjDrivers_ReferenceDriver GetHandle() {
	return *(Handle_BinTObjDrivers_ReferenceDriver*) &$self;
	}
};

%nodefaultctor BinTObjDrivers_ObjectDriver;
class BinTObjDrivers_ObjectDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinTObjDrivers_ObjectDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &Source, const Handle_TDF_Attribute &Target, BinObjMgt_RRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &Source, BinObjMgt_Persistent & Target, BinObjMgt_SRelocationTable & RelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinTObjDrivers_ObjectDriver();

};
%extend BinTObjDrivers_ObjectDriver {
	Handle_BinTObjDrivers_ObjectDriver GetHandle() {
	return *(Handle_BinTObjDrivers_ObjectDriver*) &$self;
	}
};

%nodefaultctor BinTObjDrivers;
class BinTObjDrivers {
	public:
		%feature("autodoc", "1");
		~BinTObjDrivers();
		%feature("autodoc", "1");
		BinTObjDrivers();
		%feature("autodoc", "1");
		Handle_Standard_Transient Factory(const Standard_GUID &aGUID);
		%feature("autodoc", "1");
		void AddDrivers(const Handle_BinMDF_ADriverTable &aDriverTable, const Handle_CDM_MessageDriver &aMsgDrv);

};

%nodefaultctor BinTObjDrivers_DocumentRetrievalDriver;
class BinTObjDrivers_DocumentRetrievalDriver : public BinLDrivers_DocumentRetrievalDriver {
	public:
		%feature("autodoc", "1");
		BinTObjDrivers_DocumentRetrievalDriver();
		%feature("autodoc", "1");
		virtual		Handle_BinMDF_ADriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinTObjDrivers_DocumentRetrievalDriver();

};
%extend BinTObjDrivers_DocumentRetrievalDriver {
	Handle_BinTObjDrivers_DocumentRetrievalDriver GetHandle() {
	return *(Handle_BinTObjDrivers_DocumentRetrievalDriver*) &$self;
	}
};

%nodefaultctor BinTObjDrivers_DocumentStorageDriver;
class BinTObjDrivers_DocumentStorageDriver : public BinLDrivers_DocumentStorageDriver {
	public:
		%feature("autodoc", "1");
		BinTObjDrivers_DocumentStorageDriver();
		%feature("autodoc", "1");
		virtual		Handle_BinMDF_ADriverTable AttributeDrivers(const Handle_CDM_MessageDriver &theMsgDriver);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinTObjDrivers_DocumentStorageDriver();

};
%extend BinTObjDrivers_DocumentStorageDriver {
	Handle_BinTObjDrivers_DocumentStorageDriver GetHandle() {
	return *(Handle_BinTObjDrivers_DocumentStorageDriver*) &$self;
	}
};

%nodefaultctor BinTObjDrivers_XYZDriver;
class BinTObjDrivers_XYZDriver : public BinMDF_ADriver {
	public:
		%feature("autodoc", "1");
		BinTObjDrivers_XYZDriver(const Handle_CDM_MessageDriver &theMessageDriver);
		%feature("autodoc", "1");
		virtual		Handle_TDF_Attribute NewEmpty() const;
		%feature("autodoc", "1");
		virtual		Standard_Boolean Paste(const BinObjMgt_Persistent &theSource, const Handle_TDF_Attribute &theTarget, BinObjMgt_RRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		void Paste(const Handle_TDF_Attribute &theSource, BinObjMgt_Persistent & theTarget, BinObjMgt_SRelocationTable & theRelocTable) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BinTObjDrivers_XYZDriver();

};
%extend BinTObjDrivers_XYZDriver {
	Handle_BinTObjDrivers_XYZDriver GetHandle() {
	return *(Handle_BinTObjDrivers_XYZDriver*) &$self;
	}
};