/*

Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)

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
%{

// Headers necessary to define wrapped classes.

#include<RWStepGeom_RWAxis1Placement.hxx>
#include<RWStepGeom_RWAxis2Placement2d.hxx>
#include<RWStepGeom_RWAxis2Placement3d.hxx>
#include<RWStepGeom_RWBSplineCurve.hxx>
#include<RWStepGeom_RWBSplineCurveWithKnots.hxx>
#include<RWStepGeom_RWBSplineCurveWithKnotsAndRationalBSplineCurve.hxx>
#include<RWStepGeom_RWBSplineSurface.hxx>
#include<RWStepGeom_RWBSplineSurfaceWithKnots.hxx>
#include<RWStepGeom_RWBSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx>
#include<RWStepGeom_RWBezierCurve.hxx>
#include<RWStepGeom_RWBezierCurveAndRationalBSplineCurve.hxx>
#include<RWStepGeom_RWBezierSurface.hxx>
#include<RWStepGeom_RWBezierSurfaceAndRationalBSplineSurface.hxx>
#include<RWStepGeom_RWBoundaryCurve.hxx>
#include<RWStepGeom_RWBoundedCurve.hxx>
#include<RWStepGeom_RWBoundedSurface.hxx>
#include<RWStepGeom_RWCartesianPoint.hxx>
#include<RWStepGeom_RWCartesianTransformationOperator.hxx>
#include<RWStepGeom_RWCartesianTransformationOperator3d.hxx>
#include<RWStepGeom_RWCircle.hxx>
#include<RWStepGeom_RWCompositeCurve.hxx>
#include<RWStepGeom_RWCompositeCurveOnSurface.hxx>
#include<RWStepGeom_RWCompositeCurveSegment.hxx>
#include<RWStepGeom_RWConic.hxx>
#include<RWStepGeom_RWConicalSurface.hxx>
#include<RWStepGeom_RWCurve.hxx>
#include<RWStepGeom_RWCurveBoundedSurface.hxx>
#include<RWStepGeom_RWCurveReplica.hxx>
#include<RWStepGeom_RWCylindricalSurface.hxx>
#include<RWStepGeom_RWDegeneratePcurve.hxx>
#include<RWStepGeom_RWDegenerateToroidalSurface.hxx>
#include<RWStepGeom_RWDirection.hxx>
#include<RWStepGeom_RWElementarySurface.hxx>
#include<RWStepGeom_RWEllipse.hxx>
#include<RWStepGeom_RWEvaluatedDegeneratePcurve.hxx>
#include<RWStepGeom_RWGeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx>
#include<RWStepGeom_RWGeometricRepresentationContext.hxx>
#include<RWStepGeom_RWGeometricRepresentationContextAndGlobalUnitAssignedContext.hxx>
#include<RWStepGeom_RWGeometricRepresentationContextAndParametricRepresentationContext.hxx>
#include<RWStepGeom_RWGeometricRepresentationItem.hxx>
#include<RWStepGeom_RWHyperbola.hxx>
#include<RWStepGeom_RWIntersectionCurve.hxx>
#include<RWStepGeom_RWLine.hxx>
#include<RWStepGeom_RWOffsetCurve3d.hxx>
#include<RWStepGeom_RWOffsetSurface.hxx>
#include<RWStepGeom_RWOrientedSurface.hxx>
#include<RWStepGeom_RWOuterBoundaryCurve.hxx>
#include<RWStepGeom_RWParabola.hxx>
#include<RWStepGeom_RWPcurve.hxx>
#include<RWStepGeom_RWPlacement.hxx>
#include<RWStepGeom_RWPlane.hxx>
#include<RWStepGeom_RWPoint.hxx>
#include<RWStepGeom_RWPointOnCurve.hxx>
#include<RWStepGeom_RWPointOnSurface.hxx>
#include<RWStepGeom_RWPointReplica.hxx>
#include<RWStepGeom_RWPolyline.hxx>
#include<RWStepGeom_RWQuasiUniformCurve.hxx>
#include<RWStepGeom_RWQuasiUniformCurveAndRationalBSplineCurve.hxx>
#include<RWStepGeom_RWQuasiUniformSurface.hxx>
#include<RWStepGeom_RWQuasiUniformSurfaceAndRationalBSplineSurface.hxx>
#include<RWStepGeom_RWRationalBSplineCurve.hxx>
#include<RWStepGeom_RWRationalBSplineSurface.hxx>
#include<RWStepGeom_RWRectangularCompositeSurface.hxx>
#include<RWStepGeom_RWRectangularTrimmedSurface.hxx>
#include<RWStepGeom_RWReparametrisedCompositeCurveSegment.hxx>
#include<RWStepGeom_RWSeamCurve.hxx>
#include<RWStepGeom_RWSphericalSurface.hxx>
#include<RWStepGeom_RWSurface.hxx>
#include<RWStepGeom_RWSurfaceCurve.hxx>
#include<RWStepGeom_RWSurfaceCurveAndBoundedCurve.hxx>
#include<RWStepGeom_RWSurfaceOfLinearExtrusion.hxx>
#include<RWStepGeom_RWSurfaceOfRevolution.hxx>
#include<RWStepGeom_RWSurfacePatch.hxx>
#include<RWStepGeom_RWSurfaceReplica.hxx>
#include<RWStepGeom_RWSweptSurface.hxx>
#include<RWStepGeom_RWToroidalSurface.hxx>
#include<RWStepGeom_RWTrimmedCurve.hxx>
#include<RWStepGeom_RWUniformCurve.hxx>
#include<RWStepGeom_RWUniformCurveAndRationalBSplineCurve.hxx>
#include<RWStepGeom_RWUniformSurface.hxx>
#include<RWStepGeom_RWUniformSurfaceAndRationalBSplineSurface.hxx>
#include<RWStepGeom_RWVector.hxx>

// Additional headers necessary for compilation.

#include<Handle_Interface_Check.hxx>
#include<Handle_Interface_CheckFailure.hxx>
#include<Handle_Interface_CopyControl.hxx>
#include<Handle_Interface_CopyMap.hxx>
#include<Handle_Interface_DataMapNodeOfDataMapOfIntegerTransient.hxx>
#include<Handle_Interface_DataMapNodeOfDataMapOfTransientInteger.hxx>
#include<Handle_Interface_EntityCluster.hxx>
#include<Handle_Interface_FileReaderData.hxx>
#include<Handle_Interface_GTool.hxx>
#include<Handle_Interface_GeneralModule.hxx>
#include<Handle_Interface_GlobalNodeOfGeneralLib.hxx>
#include<Handle_Interface_GlobalNodeOfReaderLib.hxx>
#include<Handle_Interface_HArray1OfHAsciiString.hxx>
#include<Handle_Interface_HGraph.hxx>
#include<Handle_Interface_HSequenceOfCheck.hxx>
#include<Handle_Interface_IndexedMapNodeOfIndexedMapOfAsciiString.hxx>
#include<Handle_Interface_IntVal.hxx>
#include<Handle_Interface_InterfaceError.hxx>
#include<Handle_Interface_InterfaceMismatch.hxx>
#include<Handle_Interface_InterfaceModel.hxx>
#include<Handle_Interface_NodeOfGeneralLib.hxx>
#include<Handle_Interface_NodeOfReaderLib.hxx>
#include<Handle_Interface_ParamList.hxx>
#include<Handle_Interface_ParamSet.hxx>
#include<Handle_Interface_Protocol.hxx>
#include<Handle_Interface_ReaderModule.hxx>
#include<Handle_Interface_ReportEntity.hxx>
#include<Handle_Interface_SequenceNodeOfSequenceOfCheck.hxx>
#include<Handle_Interface_SignLabel.hxx>
#include<Handle_Interface_SignType.hxx>
#include<Handle_Interface_Static.hxx>
#include<Handle_Interface_TypedValue.hxx>
#include<Handle_Interface_UndefinedContent.hxx>
#include<Interface_GraphContent.hxx>
#include<MoniTool_AttrList.hxx>
#include<MoniTool_CaseData.hxx>
#include<MoniTool_DataInfo.hxx>
#include<MoniTool_DataMapIteratorOfDataMapOfShapeTransient.hxx>
#include<MoniTool_DataMapIteratorOfDataMapOfTimer.hxx>
#include<MoniTool_DataMapNodeOfDataMapOfShapeTransient.hxx>
#include<MoniTool_DataMapNodeOfDataMapOfTimer.hxx>
#include<MoniTool_DataMapOfShapeTransient.hxx>
#include<MoniTool_DataMapOfTimer.hxx>
#include<MoniTool_ElemHasher.hxx>
#include<MoniTool_Element.hxx>
#include<MoniTool_HSequenceOfElement.hxx>
#include<MoniTool_IndexedDataMapNodeOfIndexedDataMapOfShapeTransient.hxx>
#include<MoniTool_IndexedDataMapOfShapeTransient.hxx>
#include<MoniTool_IntVal.hxx>
#include<MoniTool_MTHasher.hxx>
#include<MoniTool_Macros.hxx>
#include<MoniTool_OptValue.hxx>
#include<MoniTool_Option.hxx>
#include<MoniTool_Profile.hxx>
#include<MoniTool_RealVal.hxx>
#include<MoniTool_SequenceNodeOfSequenceOfElement.hxx>
#include<MoniTool_SequenceOfElement.hxx>
#include<MoniTool_SignShape.hxx>
#include<MoniTool_SignText.hxx>
#include<MoniTool_Stat.hxx>
#include<MoniTool_Timer.hxx>
#include<MoniTool_TimerSentry.hxx>
#include<MoniTool_TransientElem.hxx>
#include<MoniTool_TypedValue.hxx>
#include<MoniTool_ValueInterpret.hxx>
#include<MoniTool_ValueSatisfies.hxx>
#include<MoniTool_ValueType.hxx>
#include<StepBasic_Action.hxx>
#include<StepBasic_ActionAssignment.hxx>
#include<StepBasic_ActionMethod.hxx>
#include<StepBasic_ActionRequestAssignment.hxx>
#include<StepBasic_ActionRequestSolution.hxx>
#include<StepBasic_Address.hxx>
#include<StepBasic_AheadOrBehind.hxx>
#include<StepBasic_ApplicationContext.hxx>
#include<StepBasic_ApplicationContextElement.hxx>
#include<StepBasic_ApplicationProtocolDefinition.hxx>
#include<StepBasic_Approval.hxx>
#include<StepBasic_ApprovalAssignment.hxx>
#include<StepBasic_ApprovalDateTime.hxx>
#include<StepBasic_ApprovalPersonOrganization.hxx>
#include<StepBasic_ApprovalRelationship.hxx>
#include<StepBasic_ApprovalRole.hxx>
#include<StepBasic_ApprovalStatus.hxx>
#include<StepBasic_AreaUnit.hxx>
#include<StepBasic_Array1OfApproval.hxx>
#include<StepBasic_Array1OfDerivedUnitElement.hxx>
#include<StepBasic_Array1OfDocument.hxx>
#include<StepBasic_Array1OfNamedUnit.hxx>
#include<StepBasic_Array1OfOrganization.hxx>
#include<StepBasic_Array1OfPerson.hxx>
#include<StepBasic_Array1OfProduct.hxx>
#include<StepBasic_Array1OfProductContext.hxx>
#include<StepBasic_Array1OfProductDefinition.hxx>
#include<StepBasic_Array1OfUncertaintyMeasureWithUnit.hxx>
#include<StepBasic_CalendarDate.hxx>
#include<StepBasic_Certification.hxx>
#include<StepBasic_CertificationAssignment.hxx>
#include<StepBasic_CertificationType.hxx>
#include<StepBasic_CharacterizedObject.hxx>
#include<StepBasic_Contract.hxx>
#include<StepBasic_ContractAssignment.hxx>
#include<StepBasic_ContractType.hxx>
#include<StepBasic_ConversionBasedUnit.hxx>
#include<StepBasic_ConversionBasedUnitAndAreaUnit.hxx>
#include<StepBasic_ConversionBasedUnitAndLengthUnit.hxx>
#include<StepBasic_ConversionBasedUnitAndMassUnit.hxx>
#include<StepBasic_ConversionBasedUnitAndPlaneAngleUnit.hxx>
#include<StepBasic_ConversionBasedUnitAndRatioUnit.hxx>
#include<StepBasic_ConversionBasedUnitAndSolidAngleUnit.hxx>
#include<StepBasic_ConversionBasedUnitAndTimeUnit.hxx>
#include<StepBasic_ConversionBasedUnitAndVolumeUnit.hxx>
#include<StepBasic_CoordinatedUniversalTimeOffset.hxx>
#include<StepBasic_Date.hxx>
#include<StepBasic_DateAndTime.hxx>
#include<StepBasic_DateAndTimeAssignment.hxx>
#include<StepBasic_DateAssignment.hxx>
#include<StepBasic_DateRole.hxx>
#include<StepBasic_DateTimeRole.hxx>
#include<StepBasic_DateTimeSelect.hxx>
#include<StepBasic_DerivedUnit.hxx>
#include<StepBasic_DerivedUnitElement.hxx>
#include<StepBasic_DesignContext.hxx>
#include<StepBasic_DigitalDocument.hxx>
#include<StepBasic_DimensionalExponents.hxx>
#include<StepBasic_Document.hxx>
#include<StepBasic_DocumentFile.hxx>
#include<StepBasic_DocumentProductAssociation.hxx>
#include<StepBasic_DocumentProductEquivalence.hxx>
#include<StepBasic_DocumentReference.hxx>
#include<StepBasic_DocumentRelationship.hxx>
#include<StepBasic_DocumentRepresentationType.hxx>
#include<StepBasic_DocumentType.hxx>
#include<StepBasic_DocumentUsageConstraint.hxx>
#include<StepBasic_Effectivity.hxx>
#include<StepBasic_EffectivityAssignment.hxx>
#include<StepBasic_EulerAngles.hxx>
#include<StepBasic_ExternalIdentificationAssignment.hxx>
#include<StepBasic_ExternalSource.hxx>
#include<StepBasic_ExternallyDefinedItem.hxx>
#include<StepBasic_GeneralProperty.hxx>
#include<StepBasic_Group.hxx>
#include<StepBasic_GroupAssignment.hxx>
#include<StepBasic_GroupRelationship.hxx>
#include<StepBasic_HArray1OfApproval.hxx>
#include<StepBasic_HArray1OfDerivedUnitElement.hxx>
#include<StepBasic_HArray1OfDocument.hxx>
#include<StepBasic_HArray1OfNamedUnit.hxx>
#include<StepBasic_HArray1OfOrganization.hxx>
#include<StepBasic_HArray1OfPerson.hxx>
#include<StepBasic_HArray1OfProduct.hxx>
#include<StepBasic_HArray1OfProductContext.hxx>
#include<StepBasic_HArray1OfProductDefinition.hxx>
#include<StepBasic_HArray1OfUncertaintyMeasureWithUnit.hxx>
#include<StepBasic_IdentificationAssignment.hxx>
#include<StepBasic_IdentificationRole.hxx>
#include<StepBasic_LengthMeasureWithUnit.hxx>
#include<StepBasic_LengthUnit.hxx>
#include<StepBasic_LocalTime.hxx>
#include<StepBasic_MassMeasureWithUnit.hxx>
#include<StepBasic_MassUnit.hxx>
#include<StepBasic_MeasureValueMember.hxx>
#include<StepBasic_MeasureWithUnit.hxx>
#include<StepBasic_MechanicalContext.hxx>
#include<StepBasic_NameAssignment.hxx>
#include<StepBasic_NamedUnit.hxx>
#include<StepBasic_ObjectRole.hxx>
#include<StepBasic_OrdinalDate.hxx>
#include<StepBasic_Organization.hxx>
#include<StepBasic_OrganizationAssignment.hxx>
#include<StepBasic_OrganizationRole.hxx>
#include<StepBasic_OrganizationalAddress.hxx>
#include<StepBasic_Person.hxx>
#include<StepBasic_PersonAndOrganization.hxx>
#include<StepBasic_PersonAndOrganizationAssignment.hxx>
#include<StepBasic_PersonAndOrganizationRole.hxx>
#include<StepBasic_PersonOrganizationSelect.hxx>
#include<StepBasic_PersonalAddress.hxx>
#include<StepBasic_PhysicallyModeledProductDefinition.hxx>
#include<StepBasic_PlaneAngleMeasureWithUnit.hxx>
#include<StepBasic_PlaneAngleUnit.hxx>
#include<StepBasic_Product.hxx>
#include<StepBasic_ProductCategory.hxx>
#include<StepBasic_ProductCategoryRelationship.hxx>
#include<StepBasic_ProductConceptContext.hxx>
#include<StepBasic_ProductContext.hxx>
#include<StepBasic_ProductDefinition.hxx>
#include<StepBasic_ProductDefinitionContext.hxx>
#include<StepBasic_ProductDefinitionEffectivity.hxx>
#include<StepBasic_ProductDefinitionFormation.hxx>
#include<StepBasic_ProductDefinitionFormationRelationship.hxx>
#include<StepBasic_ProductDefinitionFormationWithSpecifiedSource.hxx>
#include<StepBasic_ProductDefinitionRelationship.hxx>
#include<StepBasic_ProductDefinitionWithAssociatedDocuments.hxx>
#include<StepBasic_ProductOrFormationOrDefinition.hxx>
#include<StepBasic_ProductRelatedProductCategory.hxx>
#include<StepBasic_ProductType.hxx>
#include<StepBasic_RatioMeasureWithUnit.hxx>
#include<StepBasic_RatioUnit.hxx>
#include<StepBasic_RoleAssociation.hxx>
#include<StepBasic_RoleSelect.hxx>
#include<StepBasic_SecurityClassification.hxx>
#include<StepBasic_SecurityClassificationAssignment.hxx>
#include<StepBasic_SecurityClassificationLevel.hxx>
#include<StepBasic_SiPrefix.hxx>
#include<StepBasic_SiUnit.hxx>
#include<StepBasic_SiUnitAndAreaUnit.hxx>
#include<StepBasic_SiUnitAndLengthUnit.hxx>
#include<StepBasic_SiUnitAndMassUnit.hxx>
#include<StepBasic_SiUnitAndPlaneAngleUnit.hxx>
#include<StepBasic_SiUnitAndRatioUnit.hxx>
#include<StepBasic_SiUnitAndSolidAngleUnit.hxx>
#include<StepBasic_SiUnitAndThermodynamicTemperatureUnit.hxx>
#include<StepBasic_SiUnitAndTimeUnit.hxx>
#include<StepBasic_SiUnitAndVolumeUnit.hxx>
#include<StepBasic_SiUnitName.hxx>
#include<StepBasic_SizeMember.hxx>
#include<StepBasic_SizeSelect.hxx>
#include<StepBasic_SolidAngleMeasureWithUnit.hxx>
#include<StepBasic_SolidAngleUnit.hxx>
#include<StepBasic_Source.hxx>
#include<StepBasic_SourceItem.hxx>
#include<StepBasic_ThermodynamicTemperatureUnit.hxx>
#include<StepBasic_TimeMeasureWithUnit.hxx>
#include<StepBasic_TimeUnit.hxx>
#include<StepBasic_UncertaintyMeasureWithUnit.hxx>
#include<StepBasic_Unit.hxx>
#include<StepBasic_VersionedActionRequest.hxx>
#include<StepBasic_VolumeUnit.hxx>
#include<StepBasic_WeekOfYearAndDayDate.hxx>
#include<TCollection.hxx>
#include<TCollection_AVLBaseNode.hxx>
#include<TCollection_AVLBaseNodePtr.hxx>
#include<TCollection_Array1Descriptor.hxx>
#include<TCollection_Array2Descriptor.hxx>
#include<TCollection_AsciiString.hxx>
#include<TCollection_BaseSequence.hxx>
#include<TCollection_BasicMap.hxx>
#include<TCollection_BasicMapIterator.hxx>
#include<TCollection_CompareOfInteger.hxx>
#include<TCollection_CompareOfReal.hxx>
#include<TCollection_ExtendedString.hxx>
#include<TCollection_HAsciiString.hxx>
#include<TCollection_HExtendedString.hxx>
#include<TCollection_MapNode.hxx>
#include<TCollection_MapNodePtr.hxx>
#include<TCollection_PrivCompareOfInteger.hxx>
#include<TCollection_PrivCompareOfReal.hxx>
#include<TCollection_SeqNode.hxx>
#include<TCollection_SeqNodePtr.hxx>
#include<TCollection_Side.hxx>

// Needed headers necessary for compilation.

#include<Handle_StepData_StepReaderData.hxx>
#include<Handle_Interface_Check.hxx>
#include<Handle_StepGeom_GeomRepContextAndGlobUnitAssCtxAndGlobUncertaintyAssCtx.hxx>
#include<StepData_StepWriter.hxx>
#include<Interface_EntityIterator.hxx>
#include<Handle_StepGeom_QuasiUniformSurfaceAndRationalBSplineSurface.hxx>
#include<Handle_StepGeom_BoundedCurve.hxx>
#include<Handle_StepGeom_PointReplica.hxx>
#include<Handle_StepGeom_DegeneratePcurve.hxx>
#include<Handle_StepGeom_Surface.hxx>
#include<Handle_StepGeom_EvaluatedDegeneratePcurve.hxx>
#include<Handle_StepGeom_GeometricRepresentationContext.hxx>
#include<Handle_StepGeom_RectangularTrimmedSurface.hxx>
#include<Handle_StepGeom_DegenerateToroidalSurface.hxx>
#include<Handle_StepGeom_CompositeCurveSegment.hxx>
#include<Handle_StepGeom_Vector.hxx>
#include<Interface_ShareTool.hxx>
#include<Handle_StepGeom_OffsetSurface.hxx>
#include<Handle_StepGeom_BoundedSurface.hxx>
#include<Handle_StepGeom_QuasiUniformCurve.hxx>
#include<Handle_StepGeom_CartesianTransformationOperator3d.hxx>
#include<Handle_StepGeom_Curve.hxx>
#include<Handle_StepGeom_Axis1Placement.hxx>
#include<Handle_StepGeom_ConicalSurface.hxx>
#include<Handle_StepGeom_SurfaceCurve.hxx>
#include<Handle_StepGeom_ToroidalSurface.hxx>
#include<Handle_StepGeom_BezierCurve.hxx>
#include<Handle_StepGeom_ReparametrisedCompositeCurveSegment.hxx>
#include<Handle_StepGeom_ElementarySurface.hxx>
#include<Handle_StepGeom_CylindricalSurface.hxx>
#include<Handle_StepGeom_BoundaryCurve.hxx>
#include<Handle_StepGeom_RationalBSplineSurface.hxx>
#include<Handle_StepGeom_SeamCurve.hxx>
#include<Handle_StepGeom_SurfacePatch.hxx>
#include<Handle_StepGeom_OuterBoundaryCurve.hxx>
#include<Handle_StepGeom_CompositeCurveOnSurface.hxx>
#include<Handle_StepGeom_QuasiUniformCurveAndRationalBSplineCurve.hxx>
#include<Handle_StepGeom_UniformCurve.hxx>
#include<Handle_StepGeom_PointOnSurface.hxx>
#include<Handle_StepGeom_SurfaceOfLinearExtrusion.hxx>
#include<Handle_StepGeom_Parabola.hxx>
#include<Handle_StepGeom_CartesianPoint.hxx>
#include<Handle_StepGeom_UniformSurface.hxx>
#include<Handle_StepGeom_BSplineCurveWithKnotsAndRationalBSplineCurve.hxx>
#include<Handle_StepGeom_Axis2Placement3d.hxx>
#include<Handle_StepGeom_GeometricRepresentationContextAndGlobalUnitAssignedContext.hxx>
#include<Handle_StepGeom_UniformSurfaceAndRationalBSplineSurface.hxx>
#include<Handle_StepGeom_Plane.hxx>
#include<Handle_StepGeom_PointOnCurve.hxx>
#include<Handle_StepGeom_GeometricRepresentationItem.hxx>
#include<Handle_StepGeom_Circle.hxx>
#include<Handle_StepGeom_CurveBoundedSurface.hxx>
#include<Handle_StepGeom_TrimmedCurve.hxx>
#include<Handle_StepGeom_RectangularCompositeSurface.hxx>
#include<Handle_StepGeom_OrientedSurface.hxx>
#include<Handle_StepGeom_CurveReplica.hxx>
#include<Handle_StepGeom_Axis2Placement2d.hxx>
#include<Handle_StepGeom_RationalBSplineCurve.hxx>
#include<Handle_StepGeom_Direction.hxx>
#include<Handle_StepGeom_BSplineCurve.hxx>
#include<Handle_StepGeom_BSplineSurface.hxx>
#include<Handle_StepGeom_UniformCurveAndRationalBSplineCurve.hxx>
#include<Handle_StepGeom_Placement.hxx>
#include<Handle_StepGeom_Point.hxx>
#include<Handle_StepGeom_CartesianTransformationOperator.hxx>
#include<Handle_StepGeom_Pcurve.hxx>
#include<Handle_StepGeom_SurfaceCurveAndBoundedCurve.hxx>
#include<Handle_StepGeom_Ellipse.hxx>
#include<Handle_StepGeom_BSplineSurfaceWithKnotsAndRationalBSplineSurface.hxx>
#include<Handle_StepGeom_BSplineCurveWithKnots.hxx>
#include<Handle_StepGeom_BezierCurveAndRationalBSplineCurve.hxx>
#include<Handle_StepGeom_SphericalSurface.hxx>
#include<Handle_StepGeom_CompositeCurve.hxx>
#include<Handle_StepGeom_SurfaceOfRevolution.hxx>
#include<Handle_StepGeom_BezierSurfaceAndRationalBSplineSurface.hxx>
#include<Handle_StepGeom_SweptSurface.hxx>
#include<Handle_StepGeom_SurfaceReplica.hxx>
#include<Handle_StepGeom_GeometricRepresentationContextAndParametricRepresentationContext.hxx>
#include<Handle_StepGeom_OffsetCurve3d.hxx>
#include<Handle_StepGeom_QuasiUniformSurface.hxx>
#include<Handle_StepGeom_BSplineSurfaceWithKnots.hxx>
#include<Handle_StepGeom_Polyline.hxx>
#include<Handle_StepGeom_BezierSurface.hxx>
#include<Handle_StepGeom_IntersectionCurve.hxx>
#include<Handle_StepGeom_Conic.hxx>
#include<Handle_StepGeom_Hyperbola.hxx>
#include<Handle_StepGeom_Line.hxx>
%}
