/*

Copyright 2008-2009 Thomas Paviot (thomas.paviot@free.fr)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

*/
%module AlienImage

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


%include AlienImage_dependencies.i


%include AlienImage_headers.i

typedef XWDFileHeader AlienImage_X11XWDFileHeader;

enum AlienImage_SUNRFFormat {
	AlienImage_SUNRF_Old,
	AlienImage_SUNRF_Standard,
	AlienImage_SUNRF_ByteEncoded,
	AlienImage_SUNRF_RGB,
	AlienImage_SUNRF_Unknown,
	};



%nodefaultctor Handle_AlienImage_AlienImage;
class Handle_AlienImage_AlienImage : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_AlienImage_AlienImage();
		%feature("autodoc", "1");
		Handle_AlienImage_AlienImage(const Handle_AlienImage_AlienImage &aHandle);
		%feature("autodoc", "1");
		Handle_AlienImage_AlienImage(const AlienImage_AlienImage *anItem);
		%feature("autodoc", "1");
		Handle_AlienImage_AlienImage const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AlienImage_AlienImage {
	AlienImage_AlienImage* GetObject() {
	return (AlienImage_AlienImage*)$self->Access();
	}
};
%extend Handle_AlienImage_AlienImage {
	~Handle_AlienImage_AlienImage() {
	printf("Call custom destructor for instance of Handle_AlienImage_AlienImage\n");
	}
};

%nodefaultctor Handle_AlienImage_AlienUserImage;
class Handle_AlienImage_AlienUserImage : public Handle_AlienImage_AlienImage {
	public:
		%feature("autodoc", "1");
		Handle_AlienImage_AlienUserImage();
		%feature("autodoc", "1");
		Handle_AlienImage_AlienUserImage(const Handle_AlienImage_AlienUserImage &aHandle);
		%feature("autodoc", "1");
		Handle_AlienImage_AlienUserImage(const AlienImage_AlienUserImage *anItem);
		%feature("autodoc", "1");
		Handle_AlienImage_AlienUserImage const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AlienImage_AlienUserImage {
	AlienImage_AlienUserImage* GetObject() {
	return (AlienImage_AlienUserImage*)$self->Access();
	}
};
%extend Handle_AlienImage_AlienUserImage {
	~Handle_AlienImage_AlienUserImage() {
	printf("Call custom destructor for instance of Handle_AlienImage_AlienUserImage\n");
	}
};

%nodefaultctor Handle_AlienImage_SGIRGBAlienImage;
class Handle_AlienImage_SGIRGBAlienImage : public Handle_AlienImage_AlienUserImage {
	public:
		%feature("autodoc", "1");
		Handle_AlienImage_SGIRGBAlienImage();
		%feature("autodoc", "1");
		Handle_AlienImage_SGIRGBAlienImage(const Handle_AlienImage_SGIRGBAlienImage &aHandle);
		%feature("autodoc", "1");
		Handle_AlienImage_SGIRGBAlienImage(const AlienImage_SGIRGBAlienImage *anItem);
		%feature("autodoc", "1");
		Handle_AlienImage_SGIRGBAlienImage const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AlienImage_SGIRGBAlienImage {
	AlienImage_SGIRGBAlienImage* GetObject() {
	return (AlienImage_SGIRGBAlienImage*)$self->Access();
	}
};
%extend Handle_AlienImage_SGIRGBAlienImage {
	~Handle_AlienImage_SGIRGBAlienImage() {
	printf("Call custom destructor for instance of Handle_AlienImage_SGIRGBAlienImage\n");
	}
};

%nodefaultctor Handle_AlienImage_AlienImageData;
class Handle_AlienImage_AlienImageData : public Handle_AlienImage_AlienImage {
	public:
		%feature("autodoc", "1");
		Handle_AlienImage_AlienImageData();
		%feature("autodoc", "1");
		Handle_AlienImage_AlienImageData(const Handle_AlienImage_AlienImageData &aHandle);
		%feature("autodoc", "1");
		Handle_AlienImage_AlienImageData(const AlienImage_AlienImageData *anItem);
		%feature("autodoc", "1");
		Handle_AlienImage_AlienImageData const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AlienImage_AlienImageData {
	AlienImage_AlienImageData* GetObject() {
	return (AlienImage_AlienImageData*)$self->Access();
	}
};
%extend Handle_AlienImage_AlienImageData {
	~Handle_AlienImage_AlienImageData() {
	printf("Call custom destructor for instance of Handle_AlienImage_AlienImageData\n");
	}
};

%nodefaultctor Handle_AlienImage_X11XWDAlienData;
class Handle_AlienImage_X11XWDAlienData : public Handle_AlienImage_AlienImageData {
	public:
		%feature("autodoc", "1");
		Handle_AlienImage_X11XWDAlienData();
		%feature("autodoc", "1");
		Handle_AlienImage_X11XWDAlienData(const Handle_AlienImage_X11XWDAlienData &aHandle);
		%feature("autodoc", "1");
		Handle_AlienImage_X11XWDAlienData(const AlienImage_X11XWDAlienData *anItem);
		%feature("autodoc", "1");
		Handle_AlienImage_X11XWDAlienData const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AlienImage_X11XWDAlienData {
	AlienImage_X11XWDAlienData* GetObject() {
	return (AlienImage_X11XWDAlienData*)$self->Access();
	}
};
%extend Handle_AlienImage_X11XWDAlienData {
	~Handle_AlienImage_X11XWDAlienData() {
	printf("Call custom destructor for instance of Handle_AlienImage_X11XWDAlienData\n");
	}
};

%nodefaultctor Handle_AlienImage_EuclidAlienImage;
class Handle_AlienImage_EuclidAlienImage : public Handle_AlienImage_AlienUserImage {
	public:
		%feature("autodoc", "1");
		Handle_AlienImage_EuclidAlienImage();
		%feature("autodoc", "1");
		Handle_AlienImage_EuclidAlienImage(const Handle_AlienImage_EuclidAlienImage &aHandle);
		%feature("autodoc", "1");
		Handle_AlienImage_EuclidAlienImage(const AlienImage_EuclidAlienImage *anItem);
		%feature("autodoc", "1");
		Handle_AlienImage_EuclidAlienImage const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AlienImage_EuclidAlienImage {
	AlienImage_EuclidAlienImage* GetObject() {
	return (AlienImage_EuclidAlienImage*)$self->Access();
	}
};
%extend Handle_AlienImage_EuclidAlienImage {
	~Handle_AlienImage_EuclidAlienImage() {
	printf("Call custom destructor for instance of Handle_AlienImage_EuclidAlienImage\n");
	}
};

%nodefaultctor Handle_AlienImage_EuclidAlienData;
class Handle_AlienImage_EuclidAlienData : public Handle_AlienImage_AlienImageData {
	public:
		%feature("autodoc", "1");
		Handle_AlienImage_EuclidAlienData();
		%feature("autodoc", "1");
		Handle_AlienImage_EuclidAlienData(const Handle_AlienImage_EuclidAlienData &aHandle);
		%feature("autodoc", "1");
		Handle_AlienImage_EuclidAlienData(const AlienImage_EuclidAlienData *anItem);
		%feature("autodoc", "1");
		Handle_AlienImage_EuclidAlienData const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AlienImage_EuclidAlienData {
	AlienImage_EuclidAlienData* GetObject() {
	return (AlienImage_EuclidAlienData*)$self->Access();
	}
};
%extend Handle_AlienImage_EuclidAlienData {
	~Handle_AlienImage_EuclidAlienData() {
	printf("Call custom destructor for instance of Handle_AlienImage_EuclidAlienData\n");
	}
};

%nodefaultctor Handle_AlienImage_SGIRGBAlienData;
class Handle_AlienImage_SGIRGBAlienData : public Handle_AlienImage_AlienImageData {
	public:
		%feature("autodoc", "1");
		Handle_AlienImage_SGIRGBAlienData();
		%feature("autodoc", "1");
		Handle_AlienImage_SGIRGBAlienData(const Handle_AlienImage_SGIRGBAlienData &aHandle);
		%feature("autodoc", "1");
		Handle_AlienImage_SGIRGBAlienData(const AlienImage_SGIRGBAlienData *anItem);
		%feature("autodoc", "1");
		Handle_AlienImage_SGIRGBAlienData const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AlienImage_SGIRGBAlienData {
	AlienImage_SGIRGBAlienData* GetObject() {
	return (AlienImage_SGIRGBAlienData*)$self->Access();
	}
};
%extend Handle_AlienImage_SGIRGBAlienData {
	~Handle_AlienImage_SGIRGBAlienData() {
	printf("Call custom destructor for instance of Handle_AlienImage_SGIRGBAlienData\n");
	}
};

%nodefaultctor Handle_AlienImage_SunRFAlienData;
class Handle_AlienImage_SunRFAlienData : public Handle_AlienImage_AlienImageData {
	public:
		%feature("autodoc", "1");
		Handle_AlienImage_SunRFAlienData();
		%feature("autodoc", "1");
		Handle_AlienImage_SunRFAlienData(const Handle_AlienImage_SunRFAlienData &aHandle);
		%feature("autodoc", "1");
		Handle_AlienImage_SunRFAlienData(const AlienImage_SunRFAlienData *anItem);
		%feature("autodoc", "1");
		Handle_AlienImage_SunRFAlienData const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AlienImage_SunRFAlienData {
	AlienImage_SunRFAlienData* GetObject() {
	return (AlienImage_SunRFAlienData*)$self->Access();
	}
};
%extend Handle_AlienImage_SunRFAlienData {
	~Handle_AlienImage_SunRFAlienData() {
	printf("Call custom destructor for instance of Handle_AlienImage_SunRFAlienData\n");
	}
};

%nodefaultctor Handle_AlienImage_AidaAlienImage;
class Handle_AlienImage_AidaAlienImage : public Handle_AlienImage_AlienUserImage {
	public:
		%feature("autodoc", "1");
		Handle_AlienImage_AidaAlienImage();
		%feature("autodoc", "1");
		Handle_AlienImage_AidaAlienImage(const Handle_AlienImage_AidaAlienImage &aHandle);
		%feature("autodoc", "1");
		Handle_AlienImage_AidaAlienImage(const AlienImage_AidaAlienImage *anItem);
		%feature("autodoc", "1");
		Handle_AlienImage_AidaAlienImage const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AlienImage_AidaAlienImage {
	AlienImage_AidaAlienImage* GetObject() {
	return (AlienImage_AidaAlienImage*)$self->Access();
	}
};
%extend Handle_AlienImage_AidaAlienImage {
	~Handle_AlienImage_AidaAlienImage() {
	printf("Call custom destructor for instance of Handle_AlienImage_AidaAlienImage\n");
	}
};

%nodefaultctor Handle_AlienImage_GIFAlienImage;
class Handle_AlienImage_GIFAlienImage : public Handle_AlienImage_AlienUserImage {
	public:
		%feature("autodoc", "1");
		Handle_AlienImage_GIFAlienImage();
		%feature("autodoc", "1");
		Handle_AlienImage_GIFAlienImage(const Handle_AlienImage_GIFAlienImage &aHandle);
		%feature("autodoc", "1");
		Handle_AlienImage_GIFAlienImage(const AlienImage_GIFAlienImage *anItem);
		%feature("autodoc", "1");
		Handle_AlienImage_GIFAlienImage const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AlienImage_GIFAlienImage {
	AlienImage_GIFAlienImage* GetObject() {
	return (AlienImage_GIFAlienImage*)$self->Access();
	}
};
%extend Handle_AlienImage_GIFAlienImage {
	~Handle_AlienImage_GIFAlienImage() {
	printf("Call custom destructor for instance of Handle_AlienImage_GIFAlienImage\n");
	}
};

%nodefaultctor Handle_AlienImage_BMPAlienImage;
class Handle_AlienImage_BMPAlienImage : public Handle_AlienImage_AlienUserImage {
	public:
		%feature("autodoc", "1");
		Handle_AlienImage_BMPAlienImage();
		%feature("autodoc", "1");
		Handle_AlienImage_BMPAlienImage(const Handle_AlienImage_BMPAlienImage &aHandle);
		%feature("autodoc", "1");
		Handle_AlienImage_BMPAlienImage(const AlienImage_BMPAlienImage *anItem);
		%feature("autodoc", "1");
		Handle_AlienImage_BMPAlienImage const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AlienImage_BMPAlienImage {
	AlienImage_BMPAlienImage* GetObject() {
	return (AlienImage_BMPAlienImage*)$self->Access();
	}
};
%extend Handle_AlienImage_BMPAlienImage {
	~Handle_AlienImage_BMPAlienImage() {
	printf("Call custom destructor for instance of Handle_AlienImage_BMPAlienImage\n");
	}
};

%nodefaultctor Handle_AlienImage_BMPAlienData;
class Handle_AlienImage_BMPAlienData : public Handle_AlienImage_AlienImageData {
	public:
		%feature("autodoc", "1");
		Handle_AlienImage_BMPAlienData();
		%feature("autodoc", "1");
		Handle_AlienImage_BMPAlienData(const Handle_AlienImage_BMPAlienData &aHandle);
		%feature("autodoc", "1");
		Handle_AlienImage_BMPAlienData(const AlienImage_BMPAlienData *anItem);
		%feature("autodoc", "1");
		Handle_AlienImage_BMPAlienData const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AlienImage_BMPAlienData {
	AlienImage_BMPAlienData* GetObject() {
	return (AlienImage_BMPAlienData*)$self->Access();
	}
};
%extend Handle_AlienImage_BMPAlienData {
	~Handle_AlienImage_BMPAlienData() {
	printf("Call custom destructor for instance of Handle_AlienImage_BMPAlienData\n");
	}
};

%nodefaultctor Handle_AlienImage_GIFAlienData;
class Handle_AlienImage_GIFAlienData : public Handle_AlienImage_AlienImageData {
	public:
		%feature("autodoc", "1");
		Handle_AlienImage_GIFAlienData();
		%feature("autodoc", "1");
		Handle_AlienImage_GIFAlienData(const Handle_AlienImage_GIFAlienData &aHandle);
		%feature("autodoc", "1");
		Handle_AlienImage_GIFAlienData(const AlienImage_GIFAlienData *anItem);
		%feature("autodoc", "1");
		Handle_AlienImage_GIFAlienData const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AlienImage_GIFAlienData {
	AlienImage_GIFAlienData* GetObject() {
	return (AlienImage_GIFAlienData*)$self->Access();
	}
};
%extend Handle_AlienImage_GIFAlienData {
	~Handle_AlienImage_GIFAlienData() {
	printf("Call custom destructor for instance of Handle_AlienImage_GIFAlienData\n");
	}
};

%nodefaultctor Handle_AlienImage_SunRFAlienImage;
class Handle_AlienImage_SunRFAlienImage : public Handle_AlienImage_AlienUserImage {
	public:
		%feature("autodoc", "1");
		Handle_AlienImage_SunRFAlienImage();
		%feature("autodoc", "1");
		Handle_AlienImage_SunRFAlienImage(const Handle_AlienImage_SunRFAlienImage &aHandle);
		%feature("autodoc", "1");
		Handle_AlienImage_SunRFAlienImage(const AlienImage_SunRFAlienImage *anItem);
		%feature("autodoc", "1");
		Handle_AlienImage_SunRFAlienImage const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AlienImage_SunRFAlienImage {
	AlienImage_SunRFAlienImage* GetObject() {
	return (AlienImage_SunRFAlienImage*)$self->Access();
	}
};
%extend Handle_AlienImage_SunRFAlienImage {
	~Handle_AlienImage_SunRFAlienImage() {
	printf("Call custom destructor for instance of Handle_AlienImage_SunRFAlienImage\n");
	}
};

%nodefaultctor Handle_AlienImage_AidaAlienData;
class Handle_AlienImage_AidaAlienData : public Handle_AlienImage_AlienImageData {
	public:
		%feature("autodoc", "1");
		Handle_AlienImage_AidaAlienData();
		%feature("autodoc", "1");
		Handle_AlienImage_AidaAlienData(const Handle_AlienImage_AidaAlienData &aHandle);
		%feature("autodoc", "1");
		Handle_AlienImage_AidaAlienData(const AlienImage_AidaAlienData *anItem);
		%feature("autodoc", "1");
		Handle_AlienImage_AidaAlienData const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AlienImage_AidaAlienData {
	AlienImage_AidaAlienData* GetObject() {
	return (AlienImage_AidaAlienData*)$self->Access();
	}
};
%extend Handle_AlienImage_AidaAlienData {
	~Handle_AlienImage_AidaAlienData() {
	printf("Call custom destructor for instance of Handle_AlienImage_AidaAlienData\n");
	}
};

%nodefaultctor Handle_AlienImage_XAlienImage;
class Handle_AlienImage_XAlienImage : public Handle_AlienImage_AlienUserImage {
	public:
		%feature("autodoc", "1");
		Handle_AlienImage_XAlienImage();
		%feature("autodoc", "1");
		Handle_AlienImage_XAlienImage(const Handle_AlienImage_XAlienImage &aHandle);
		%feature("autodoc", "1");
		Handle_AlienImage_XAlienImage(const AlienImage_XAlienImage *anItem);
		%feature("autodoc", "1");
		Handle_AlienImage_XAlienImage const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_AlienImage_XAlienImage {
	AlienImage_XAlienImage* GetObject() {
	return (AlienImage_XAlienImage*)$self->Access();
	}
};
%extend Handle_AlienImage_XAlienImage {
	~Handle_AlienImage_XAlienImage() {
	printf("Call custom destructor for instance of Handle_AlienImage_XAlienImage\n");
	}
};

%nodefaultctor AlienImage_AlienImage;
class AlienImage_AlienImage : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Boolean Read(OSD_File & afile);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Write(OSD_File & afile) const;
		%feature("autodoc", "1");
		virtual		Handle_Image_Image ToImage() const;
		%feature("autodoc", "1");
		virtual		void FromImage(const Handle_Image_Image &anImage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AlienImage_AlienImage {
	Handle_AlienImage_AlienImage GetHandle() {
	return *(Handle_AlienImage_AlienImage*) &$self;
	}
};
%extend AlienImage_AlienImage {
	~AlienImage_AlienImage() {
	printf("Call custom destructor for instance of AlienImage_AlienImage\n");
	}
};

%nodefaultctor AlienImage_AlienImageData;
class AlienImage_AlienImageData : public AlienImage_AlienImage {
	public:
		%feature("autodoc", "1");
		virtual		void SetName(const TCollection_AsciiString &aName);
		%feature("autodoc", "1");
		virtual		const TCollection_AsciiString & Name() const;

};
%extend AlienImage_AlienImageData {
	Handle_AlienImage_AlienImageData GetHandle() {
	return *(Handle_AlienImage_AlienImageData*) &$self;
	}
};
%extend AlienImage_AlienImageData {
	~AlienImage_AlienImageData() {
	printf("Call custom destructor for instance of AlienImage_AlienImageData\n");
	}
};

%nodefaultctor AlienImage_SGIRGBAlienData;
class AlienImage_SGIRGBAlienData : public AlienImage_AlienImageData {
	public:
		%feature("autodoc", "1");
		AlienImage_SGIRGBAlienData();
		%feature("autodoc", "1");
		void Clear();

};
%extend AlienImage_SGIRGBAlienData {
	Handle_AlienImage_SGIRGBAlienData GetHandle() {
	return *(Handle_AlienImage_SGIRGBAlienData*) &$self;
	}
};
%extend AlienImage_SGIRGBAlienData {
	~AlienImage_SGIRGBAlienData() {
	printf("Call custom destructor for instance of AlienImage_SGIRGBAlienData\n");
	}
};

%nodefaultctor AlienImage_SGIRGBFileHeader;
class AlienImage_SGIRGBFileHeader {
	public:
		%feature("autodoc", "1");
		AlienImage_SGIRGBFileHeader();

};

%nodefaultctor AlienImage_SUNRFFileHeader;
class AlienImage_SUNRFFileHeader {
	public:
		%feature("autodoc", "1");
		AlienImage_SUNRFFileHeader();

};

%nodefaultctor AlienImage_AlienUserImage;
class AlienImage_AlienUserImage : public AlienImage_AlienImage {
	public:
		%feature("autodoc", "1");
		virtual		Standard_Boolean Read(OSD_File & afile);
		%feature("autodoc", "1");
		Standard_Boolean Read(const char * afile);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Write(OSD_File & afile) const;
		%feature("autodoc", "1");
		Standard_Boolean Write(const char * afile) const;
		%feature("autodoc", "1");
		virtual		Handle_Image_Image ToImage() const;
		%feature("autodoc", "1");
		virtual		void FromImage(const Handle_Image_Image &anImage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AlienImage_AlienUserImage {
	Handle_AlienImage_AlienUserImage GetHandle() {
	return *(Handle_AlienImage_AlienUserImage*) &$self;
	}
};
%extend AlienImage_AlienUserImage {
	~AlienImage_AlienUserImage() {
	printf("Call custom destructor for instance of AlienImage_AlienUserImage\n");
	}
};

%nodefaultctor AlienImage_SGIRGBAlienImage;
class AlienImage_SGIRGBAlienImage : public AlienImage_AlienUserImage {
	public:
		%feature("autodoc", "1");
		AlienImage_SGIRGBAlienImage();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void SetName(const TCollection_AsciiString &aName);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Name() const;

};
%extend AlienImage_SGIRGBAlienImage {
	Handle_AlienImage_SGIRGBAlienImage GetHandle() {
	return *(Handle_AlienImage_SGIRGBAlienImage*) &$self;
	}
};
%extend AlienImage_SGIRGBAlienImage {
	~AlienImage_SGIRGBAlienImage() {
	printf("Call custom destructor for instance of AlienImage_SGIRGBAlienImage\n");
	}
};

%nodefaultctor AlienImage_MemoryOperations;
class AlienImage_MemoryOperations {
	public:
		%feature("autodoc", "1");
		~AlienImage_MemoryOperations();
		%feature("autodoc", "1");
		AlienImage_MemoryOperations();
		%feature("autodoc", "1");
		void SwapLong(const Standard_Address Data, const Standard_Integer Size);
		%feature("autodoc", "1");
		void SwapShort(const Standard_Address Data, const Standard_Integer Size);

};

%nodefaultctor AlienImage_SunRFAlienImage;
class AlienImage_SunRFAlienImage : public AlienImage_AlienUserImage {
	public:
		%feature("autodoc", "1");
		AlienImage_SunRFAlienImage();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		virtual		Handle_Image_Image ToImage() const;
		%feature("autodoc", "1");
		virtual		void FromImage(const Handle_Image_Image &anImage);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Read(OSD_File & afile);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Write(OSD_File & afile) const;
		%feature("autodoc", "1");
		void SetFormat(const AlienImage_SUNRFFormat aFormat);
		%feature("autodoc", "1");
		AlienImage_SUNRFFormat Format() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AlienImage_SunRFAlienImage {
	Handle_AlienImage_SunRFAlienImage GetHandle() {
	return *(Handle_AlienImage_SunRFAlienImage*) &$self;
	}
};
%extend AlienImage_SunRFAlienImage {
	~AlienImage_SunRFAlienImage() {
	printf("Call custom destructor for instance of AlienImage_SunRFAlienImage\n");
	}
};

%nodefaultctor AlienImage_X11XWDAlienData;
class AlienImage_X11XWDAlienData : public AlienImage_AlienImageData {
	public:
		%feature("autodoc", "1");
		AlienImage_X11XWDAlienData();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Read(OSD_File & afile);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Write(OSD_File & afile) const;
		%feature("autodoc", "1");
		virtual		void SetName(const TCollection_AsciiString &aName);
		%feature("autodoc", "1");
		virtual		const TCollection_AsciiString & Name() const;
		%feature("autodoc", "1");
		virtual		Handle_Image_Image ToImage() const;
		%feature("autodoc", "1");
		virtual		void FromImage(const Handle_Image_Image &anImage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AlienImage_X11XWDAlienData {
	Handle_AlienImage_X11XWDAlienData GetHandle() {
	return *(Handle_AlienImage_X11XWDAlienData*) &$self;
	}
};
%extend AlienImage_X11XWDAlienData {
	~AlienImage_X11XWDAlienData() {
	printf("Call custom destructor for instance of AlienImage_X11XWDAlienData\n");
	}
};

%nodefaultctor AlienImage_XAlienImage;
class AlienImage_XAlienImage : public AlienImage_AlienUserImage {
	public:
		%feature("autodoc", "1");
		AlienImage_XAlienImage();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void SetName(const TCollection_AsciiString &aName);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Name() const;
		%feature("autodoc", "1");
		virtual		Handle_Image_Image ToImage() const;
		%feature("autodoc", "1");
		virtual		void FromImage(const Handle_Image_Image &anImage);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Read(OSD_File & afile);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Write(OSD_File & afile) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AlienImage_XAlienImage {
	Handle_AlienImage_XAlienImage GetHandle() {
	return *(Handle_AlienImage_XAlienImage*) &$self;
	}
};
%extend AlienImage_XAlienImage {
	~AlienImage_XAlienImage() {
	printf("Call custom destructor for instance of AlienImage_XAlienImage\n");
	}
};

%nodefaultctor AlienImage_X11XColor;
class AlienImage_X11XColor {
	public:
		%feature("autodoc", "1");
		AlienImage_X11XColor();

};

%nodefaultctor AlienImage_BMPAlienData;
class AlienImage_BMPAlienData : public AlienImage_AlienImageData {
	public:
		%feature("autodoc", "1");
		AlienImage_BMPAlienData();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Read(OSD_File & afile);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Write(OSD_File & afile) const;
		%feature("autodoc", "1");
		virtual		Handle_Image_Image ToImage() const;
		%feature("autodoc", "1");
		virtual		void FromImage(const Handle_Image_Image &anImage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AlienImage_BMPAlienData {
	Handle_AlienImage_BMPAlienData GetHandle() {
	return *(Handle_AlienImage_BMPAlienData*) &$self;
	}
};
%extend AlienImage_BMPAlienData {
	~AlienImage_BMPAlienData() {
	printf("Call custom destructor for instance of AlienImage_BMPAlienData\n");
	}
};

%nodefaultctor AlienImage;
class AlienImage {
	public:
		%feature("autodoc", "1");
		~AlienImage();
		%feature("autodoc", "1");
		AlienImage();
		%feature("autodoc", "1");
		Standard_Boolean CreateImage(const TCollection_AsciiString &theFileName, Handle_Image_Image & theImage);
		%feature("autodoc", "1");
		Standard_Boolean CreateImage(const char * theFileName, Handle_Image_Image & theImage);
		%feature("autodoc", "1");
		Standard_Boolean CreateImage(OSD_File & theFile, Handle_Image_Image & theImage);
		%feature("autodoc", "1");
		Standard_Boolean LoadImageFile(const char * anImageFile, Handle_Image_Image & anImage, Standard_Integer & aWidth, Standard_Integer & aHeight);

};

%nodefaultctor AlienImage_AidaAlienImage;
class AlienImage_AidaAlienImage : public AlienImage_AlienUserImage {
	public:
		%feature("autodoc", "1");
		AlienImage_AidaAlienImage();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		virtual		Handle_Image_Image ToImage() const;
		%feature("autodoc", "1");
		virtual		void FromImage(const Handle_Image_Image &anImage);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Read(OSD_File & afile);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Write(OSD_File & afile) const;
		%feature("autodoc", "1");
		void SetColorImageDitheringMethod(const Image_DitheringMethod aMethod, const Handle_Aspect_ColorMap &aColorMap);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AlienImage_AidaAlienImage {
	Handle_AlienImage_AidaAlienImage GetHandle() {
	return *(Handle_AlienImage_AidaAlienImage*) &$self;
	}
};
%extend AlienImage_AidaAlienImage {
	~AlienImage_AidaAlienImage() {
	printf("Call custom destructor for instance of AlienImage_AidaAlienImage\n");
	}
};

%nodefaultctor AlienImage_EuclidAlienImage;
class AlienImage_EuclidAlienImage : public AlienImage_AlienUserImage {
	public:
		%feature("autodoc", "1");
		AlienImage_EuclidAlienImage();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		virtual		Handle_Image_Image ToImage() const;
		%feature("autodoc", "1");
		virtual		void FromImage(const Handle_Image_Image &anImage);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Read(OSD_File & afile);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Write(OSD_File & afile) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AlienImage_EuclidAlienImage {
	Handle_AlienImage_EuclidAlienImage GetHandle() {
	return *(Handle_AlienImage_EuclidAlienImage*) &$self;
	}
};
%extend AlienImage_EuclidAlienImage {
	~AlienImage_EuclidAlienImage() {
	printf("Call custom destructor for instance of AlienImage_EuclidAlienImage\n");
	}
};

%nodefaultctor AlienImage_EuclidAlienData;
class AlienImage_EuclidAlienData : public AlienImage_AlienImageData {
	public:
		%feature("autodoc", "1");
		AlienImage_EuclidAlienData();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Read(OSD_File & afile);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Write(OSD_File & afile) const;
		%feature("autodoc", "1");
		virtual		Handle_Image_Image ToImage() const;
		%feature("autodoc", "1");
		virtual		void FromImage(const Handle_Image_Image &anImage);
		%feature("autodoc", "1");
		void FromPseudoColorImage(const Handle_Image_PseudoColorImage &anImage);
		%feature("autodoc", "1");
		void FromColorImage(const Handle_Image_ColorImage &anImage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AlienImage_EuclidAlienData {
	Handle_AlienImage_EuclidAlienData GetHandle() {
	return *(Handle_AlienImage_EuclidAlienData*) &$self;
	}
};
%extend AlienImage_EuclidAlienData {
	~AlienImage_EuclidAlienData() {
	printf("Call custom destructor for instance of AlienImage_EuclidAlienData\n");
	}
};

%nodefaultctor AlienImage_AidaAlienData;
class AlienImage_AidaAlienData : public AlienImage_AlienImageData {
	public:
		%feature("autodoc", "1");
		AlienImage_AidaAlienData();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Read(OSD_File & afile);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Write(OSD_File & afile) const;
		%feature("autodoc", "1");
		virtual		Handle_Image_Image ToImage() const;
		%feature("autodoc", "1");
		virtual		void FromImage(const Handle_Image_Image &anImage);
		%feature("autodoc", "1");
		void SetColorImageDitheringMethod(const Image_DitheringMethod aMethod, const Handle_Aspect_ColorMap &aColorMap);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AlienImage_AidaAlienData {
	Handle_AlienImage_AidaAlienData GetHandle() {
	return *(Handle_AlienImage_AidaAlienData*) &$self;
	}
};
%extend AlienImage_AidaAlienData {
	~AlienImage_AidaAlienData() {
	printf("Call custom destructor for instance of AlienImage_AidaAlienData\n");
	}
};

%nodefaultctor AlienImage_SunRFAlienData;
class AlienImage_SunRFAlienData : public AlienImage_AlienImageData {
	public:
		%feature("autodoc", "1");
		AlienImage_SunRFAlienData();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void FreeData();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Read(OSD_File & afile);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Write(OSD_File & afile) const;
		%feature("autodoc", "1");
		void SetFormat(const AlienImage_SUNRFFormat aFormat);
		%feature("autodoc", "1");
		AlienImage_SUNRFFormat Format() const;
		%feature("autodoc", "1");
		virtual		Handle_Image_Image ToImage() const;
		%feature("autodoc", "1");
		virtual		void FromImage(const Handle_Image_Image &anImage);
		%feature("autodoc", "1");
		void FromPseudoColorImage(const Handle_Image_PseudoColorImage &anImage);
		%feature("autodoc", "1");
		void FromColorImage(const Handle_Image_ColorImage &anImage);
		%feature("autodoc", "1");
		Standard_Boolean ReadPixelRow(OSD_File & afile, const Standard_Address aAddress, const Standard_Integer TheRowSize);
		%feature("autodoc", "1");
		Standard_Boolean WritePixelRow(OSD_File & afile, const Standard_Address aAddress, const Standard_Integer TheRowSize) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AlienImage_SunRFAlienData {
	Handle_AlienImage_SunRFAlienData GetHandle() {
	return *(Handle_AlienImage_SunRFAlienData*) &$self;
	}
};
%extend AlienImage_SunRFAlienData {
	~AlienImage_SunRFAlienData() {
	printf("Call custom destructor for instance of AlienImage_SunRFAlienData\n");
	}
};

%nodefaultctor AlienImage_BMPHeader;
class AlienImage_BMPHeader {
	public:
		%feature("autodoc", "1");
		AlienImage_BMPHeader();

};

%nodefaultctor AlienImage_GIFAlienData;
class AlienImage_GIFAlienData : public AlienImage_AlienImageData {
	public:
		%feature("autodoc", "1");
		AlienImage_GIFAlienData();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Read(OSD_File & afile);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Write(OSD_File & afile) const;
		%feature("autodoc", "1");
		virtual		Handle_Image_Image ToImage() const;
		%feature("autodoc", "1");
		virtual		void FromImage(const Handle_Image_Image &anImage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AlienImage_GIFAlienData {
	Handle_AlienImage_GIFAlienData GetHandle() {
	return *(Handle_AlienImage_GIFAlienData*) &$self;
	}
};
%extend AlienImage_GIFAlienData {
	~AlienImage_GIFAlienData() {
	printf("Call custom destructor for instance of AlienImage_GIFAlienData\n");
	}
};

%nodefaultctor AlienImage_BMPAlienImage;
class AlienImage_BMPAlienImage : public AlienImage_AlienUserImage {
	public:
		%feature("autodoc", "1");
		AlienImage_BMPAlienImage();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void SetName(const TCollection_AsciiString &aName);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Name() const;
		%feature("autodoc", "1");
		virtual		Handle_Image_Image ToImage() const;
		%feature("autodoc", "1");
		virtual		void FromImage(const Handle_Image_Image &anImage);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Read(OSD_File & afile);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Write(OSD_File & afile) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AlienImage_BMPAlienImage {
	Handle_AlienImage_BMPAlienImage GetHandle() {
	return *(Handle_AlienImage_BMPAlienImage*) &$self;
	}
};
%extend AlienImage_BMPAlienImage {
	~AlienImage_BMPAlienImage() {
	printf("Call custom destructor for instance of AlienImage_BMPAlienImage\n");
	}
};

%nodefaultctor AlienImage_GIFAlienImage;
class AlienImage_GIFAlienImage : public AlienImage_AlienUserImage {
	public:
		%feature("autodoc", "1");
		AlienImage_GIFAlienImage();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void SetName(const TCollection_AsciiString &aName);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Name() const;
		%feature("autodoc", "1");
		virtual		Handle_Image_Image ToImage() const;
		%feature("autodoc", "1");
		virtual		void FromImage(const Handle_Image_Image &anImage);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Read(OSD_File & afile);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Write(OSD_File & afile) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend AlienImage_GIFAlienImage {
	Handle_AlienImage_GIFAlienImage GetHandle() {
	return *(Handle_AlienImage_GIFAlienImage*) &$self;
	}
};
%extend AlienImage_GIFAlienImage {
	~AlienImage_GIFAlienImage() {
	printf("Call custom destructor for instance of AlienImage_GIFAlienImage\n");
	}
};