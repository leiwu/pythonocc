// This library is free software; you can redistribute it and/or
// modify it under the terms of the GNU Lesser General Public
// License as published by the Free Software Foundation; either 
// version 2.1 of the License.
// 
// This library is distributed in the hope that it will be useful 
// but WITHOUT ANY WARRANTY; without even the implied warranty of 
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU 
// Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public  
// License along with this library; if not, write to the Free Software 
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
//
// Original work from OpenCascade Sketcher 
// (http://sourceforge.net/projects/occsketcher/)
//
// Modifications for GEOM and OCAF
// Authored by : Sioutis Fotios (sfotis@gmail.com)

//------------------------------------------------------------------------------
#ifndef Sketcher_SnapMIDDLE_H
#define Sketcher_SnapMIDDLE_H
//------------------------------------------------------------------------------
#include "Sketcher_Snap.hxx"
#include "Sketcher_Edge.hxx"
#include "Sketcher_Arc.hxx"
//------------------------------------------------------------------------------
DEFINE_STANDARD_HANDLE(Sketcher_SnapMiddle,Sketcher_Snap)
//------------------------------------------------------------------------------
class Sketcher_SnapMiddle : public Sketcher_Snap
{
  public:
    DEFINE_STANDARD_RTTI(Sketcher_SnapMiddle)

    Standard_EXPORT Sketcher_SnapMiddle();
    Standard_EXPORT ~Sketcher_SnapMiddle();

    Standard_EXPORT void SelectEvent();
    Standard_EXPORT Sketcher_SnapType GetSnapType();

  private:
    Handle(Sketcher_Edge) curSketcher_Edge;
    Handle(Sketcher_Arc)  curSketcher_Arc;
};
//------------------------------------------------------------------------------
#endif
//------------------------------------------------------------------------------
