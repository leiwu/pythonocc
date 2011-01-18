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

#include<Handle_StepShape_AdvancedBrepShapeRepresentation.hxx>
#include<Handle_StepShape_AdvancedFace.hxx>
#include<Handle_StepShape_AngularLocation.hxx>
#include<Handle_StepShape_AngularSize.hxx>
#include<Handle_StepShape_Block.hxx>
#include<Handle_StepShape_BooleanResult.hxx>
#include<Handle_StepShape_BoxDomain.hxx>
#include<Handle_StepShape_BoxedHalfSpace.hxx>
#include<Handle_StepShape_BrepWithVoids.hxx>
#include<Handle_StepShape_ClosedShell.hxx>
#include<Handle_StepShape_CompoundShapeRepresentation.hxx>
#include<Handle_StepShape_ConnectedEdgeSet.hxx>
#include<Handle_StepShape_ConnectedFaceSet.hxx>
#include<Handle_StepShape_ConnectedFaceShapeRepresentation.hxx>
#include<Handle_StepShape_ConnectedFaceSubSet.hxx>
#include<Handle_StepShape_ContextDependentShapeRepresentation.hxx>
#include<Handle_StepShape_CsgShapeRepresentation.hxx>
#include<Handle_StepShape_CsgSolid.hxx>
#include<Handle_StepShape_DefinitionalRepresentationAndShapeRepresentation.hxx>
#include<Handle_StepShape_DimensionalCharacteristicRepresentation.hxx>
#include<Handle_StepShape_DimensionalLocation.hxx>
#include<Handle_StepShape_DimensionalLocationWithPath.hxx>
#include<Handle_StepShape_DimensionalSize.hxx>
#include<Handle_StepShape_DimensionalSizeWithPath.hxx>
#include<Handle_StepShape_DirectedDimensionalLocation.hxx>
#include<Handle_StepShape_Edge.hxx>
#include<Handle_StepShape_EdgeBasedWireframeModel.hxx>
#include<Handle_StepShape_EdgeBasedWireframeShapeRepresentation.hxx>
#include<Handle_StepShape_EdgeCurve.hxx>
#include<Handle_StepShape_EdgeLoop.hxx>
#include<Handle_StepShape_ExtrudedAreaSolid.hxx>
#include<Handle_StepShape_ExtrudedFaceSolid.hxx>
#include<Handle_StepShape_Face.hxx>
#include<Handle_StepShape_FaceBasedSurfaceModel.hxx>
#include<Handle_StepShape_FaceBound.hxx>
#include<Handle_StepShape_FaceOuterBound.hxx>
#include<Handle_StepShape_FaceSurface.hxx>
#include<Handle_StepShape_FacetedBrep.hxx>
#include<Handle_StepShape_FacetedBrepAndBrepWithVoids.hxx>
#include<Handle_StepShape_FacetedBrepShapeRepresentation.hxx>
#include<Handle_StepShape_GeometricCurveSet.hxx>
#include<Handle_StepShape_GeometricSet.hxx>
#include<Handle_StepShape_GeometricallyBoundedSurfaceShapeRepresentation.hxx>
#include<Handle_StepShape_GeometricallyBoundedWireframeShapeRepresentation.hxx>
#include<Handle_StepShape_HArray1OfConnectedEdgeSet.hxx>
#include<Handle_StepShape_HArray1OfConnectedFaceSet.hxx>
#include<Handle_StepShape_HArray1OfEdge.hxx>
#include<Handle_StepShape_HArray1OfFace.hxx>
#include<Handle_StepShape_HArray1OfFaceBound.hxx>
#include<Handle_StepShape_HArray1OfGeometricSetSelect.hxx>
#include<Handle_StepShape_HArray1OfOrientedClosedShell.hxx>
#include<Handle_StepShape_HArray1OfOrientedEdge.hxx>
#include<Handle_StepShape_HArray1OfShell.hxx>
#include<Handle_StepShape_HArray1OfValueQualifier.hxx>
#include<Handle_StepShape_HalfSpaceSolid.hxx>
#include<Handle_StepShape_LimitsAndFits.hxx>
#include<Handle_StepShape_Loop.hxx>
#include<Handle_StepShape_LoopAndPath.hxx>
#include<Handle_StepShape_ManifoldSolidBrep.hxx>
#include<Handle_StepShape_ManifoldSurfaceShapeRepresentation.hxx>
#include<Handle_StepShape_MeasureQualification.hxx>
#include<Handle_StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem.hxx>
#include<Handle_StepShape_NonManifoldSurfaceShapeRepresentation.hxx>
#include<Handle_StepShape_OpenShell.hxx>
#include<Handle_StepShape_OrientedClosedShell.hxx>
#include<Handle_StepShape_OrientedEdge.hxx>
#include<Handle_StepShape_OrientedFace.hxx>
#include<Handle_StepShape_OrientedOpenShell.hxx>
#include<Handle_StepShape_OrientedPath.hxx>
#include<Handle_StepShape_Path.hxx>
#include<Handle_StepShape_PlusMinusTolerance.hxx>
#include<Handle_StepShape_PointRepresentation.hxx>
#include<Handle_StepShape_PolyLoop.hxx>
#include<Handle_StepShape_PrecisionQualifier.hxx>
#include<Handle_StepShape_QualifiedRepresentationItem.hxx>
#include<Handle_StepShape_RevolvedAreaSolid.hxx>
#include<Handle_StepShape_RevolvedFaceSolid.hxx>
#include<Handle_StepShape_RightAngularWedge.hxx>
#include<Handle_StepShape_RightCircularCone.hxx>
#include<Handle_StepShape_RightCircularCylinder.hxx>
#include<Handle_StepShape_SeamEdge.hxx>
#include<Handle_StepShape_ShapeDefinitionRepresentation.hxx>
#include<Handle_StepShape_ShapeDimensionRepresentation.hxx>
#include<Handle_StepShape_ShapeRepresentation.hxx>
#include<Handle_StepShape_ShapeRepresentationWithParameters.hxx>
#include<Handle_StepShape_ShellBasedSurfaceModel.hxx>
#include<Handle_StepShape_SolidModel.hxx>
#include<Handle_StepShape_SolidReplica.hxx>
#include<Handle_StepShape_Sphere.hxx>
#include<Handle_StepShape_Subedge.hxx>
#include<Handle_StepShape_Subface.hxx>
#include<Handle_StepShape_SweptAreaSolid.hxx>
#include<Handle_StepShape_SweptFaceSolid.hxx>
#include<Handle_StepShape_ToleranceValue.hxx>
#include<Handle_StepShape_TopologicalRepresentationItem.hxx>
#include<Handle_StepShape_Torus.hxx>
#include<Handle_StepShape_TransitionalShapeRepresentation.hxx>
#include<Handle_StepShape_TypeQualifier.hxx>
#include<Handle_StepShape_Vertex.hxx>
#include<Handle_StepShape_VertexLoop.hxx>
#include<Handle_StepShape_VertexPoint.hxx>
#include<StepShape_AdvancedBrepShapeRepresentation.hxx>
#include<StepShape_AdvancedFace.hxx>
#include<StepShape_AngleRelator.hxx>
#include<StepShape_AngularLocation.hxx>
#include<StepShape_AngularSize.hxx>
#include<StepShape_Array1OfConnectedEdgeSet.hxx>
#include<StepShape_Array1OfConnectedFaceSet.hxx>
#include<StepShape_Array1OfEdge.hxx>
#include<StepShape_Array1OfFace.hxx>
#include<StepShape_Array1OfFaceBound.hxx>
#include<StepShape_Array1OfGeometricSetSelect.hxx>
#include<StepShape_Array1OfOrientedClosedShell.hxx>
#include<StepShape_Array1OfOrientedEdge.hxx>
#include<StepShape_Array1OfShell.hxx>
#include<StepShape_Array1OfValueQualifier.hxx>
#include<StepShape_Block.hxx>
#include<StepShape_BooleanOperand.hxx>
#include<StepShape_BooleanOperator.hxx>
#include<StepShape_BooleanResult.hxx>
#include<StepShape_BoxDomain.hxx>
#include<StepShape_BoxedHalfSpace.hxx>
#include<StepShape_BrepWithVoids.hxx>
#include<StepShape_ClosedShell.hxx>
#include<StepShape_CompoundShapeRepresentation.hxx>
#include<StepShape_ConnectedEdgeSet.hxx>
#include<StepShape_ConnectedFaceSet.hxx>
#include<StepShape_ConnectedFaceShapeRepresentation.hxx>
#include<StepShape_ConnectedFaceSubSet.hxx>
#include<StepShape_ContextDependentShapeRepresentation.hxx>
#include<StepShape_CsgPrimitive.hxx>
#include<StepShape_CsgSelect.hxx>
#include<StepShape_CsgShapeRepresentation.hxx>
#include<StepShape_CsgSolid.hxx>
#include<StepShape_DefinitionalRepresentationAndShapeRepresentation.hxx>
#include<StepShape_DimensionalCharacteristic.hxx>
#include<StepShape_DimensionalCharacteristicRepresentation.hxx>
#include<StepShape_DimensionalLocation.hxx>
#include<StepShape_DimensionalLocationWithPath.hxx>
#include<StepShape_DimensionalSize.hxx>
#include<StepShape_DimensionalSizeWithPath.hxx>
#include<StepShape_DirectedDimensionalLocation.hxx>
#include<StepShape_Edge.hxx>
#include<StepShape_EdgeBasedWireframeModel.hxx>
#include<StepShape_EdgeBasedWireframeShapeRepresentation.hxx>
#include<StepShape_EdgeCurve.hxx>
#include<StepShape_EdgeLoop.hxx>
#include<StepShape_ExtrudedAreaSolid.hxx>
#include<StepShape_ExtrudedFaceSolid.hxx>
#include<StepShape_Face.hxx>
#include<StepShape_FaceBasedSurfaceModel.hxx>
#include<StepShape_FaceBound.hxx>
#include<StepShape_FaceOuterBound.hxx>
#include<StepShape_FaceSurface.hxx>
#include<StepShape_FacetedBrep.hxx>
#include<StepShape_FacetedBrepAndBrepWithVoids.hxx>
#include<StepShape_FacetedBrepShapeRepresentation.hxx>
#include<StepShape_GeometricCurveSet.hxx>
#include<StepShape_GeometricSet.hxx>
#include<StepShape_GeometricSetSelect.hxx>
#include<StepShape_GeometricallyBoundedSurfaceShapeRepresentation.hxx>
#include<StepShape_GeometricallyBoundedWireframeShapeRepresentation.hxx>
#include<StepShape_HArray1OfConnectedEdgeSet.hxx>
#include<StepShape_HArray1OfConnectedFaceSet.hxx>
#include<StepShape_HArray1OfEdge.hxx>
#include<StepShape_HArray1OfFace.hxx>
#include<StepShape_HArray1OfFaceBound.hxx>
#include<StepShape_HArray1OfGeometricSetSelect.hxx>
#include<StepShape_HArray1OfOrientedClosedShell.hxx>
#include<StepShape_HArray1OfOrientedEdge.hxx>
#include<StepShape_HArray1OfShell.hxx>
#include<StepShape_HArray1OfValueQualifier.hxx>
#include<StepShape_HalfSpaceSolid.hxx>
#include<StepShape_LimitsAndFits.hxx>
#include<StepShape_Loop.hxx>
#include<StepShape_LoopAndPath.hxx>
#include<StepShape_ManifoldSolidBrep.hxx>
#include<StepShape_ManifoldSurfaceShapeRepresentation.hxx>
#include<StepShape_MeasureQualification.hxx>
#include<StepShape_MeasureRepresentationItemAndQualifiedRepresentationItem.hxx>
#include<StepShape_NonManifoldSurfaceShapeRepresentation.hxx>
#include<StepShape_OpenShell.hxx>
#include<StepShape_OrientedClosedShell.hxx>
#include<StepShape_OrientedEdge.hxx>
#include<StepShape_OrientedFace.hxx>
#include<StepShape_OrientedOpenShell.hxx>
#include<StepShape_OrientedPath.hxx>
#include<StepShape_Path.hxx>
#include<StepShape_PlusMinusTolerance.hxx>
#include<StepShape_PointRepresentation.hxx>
#include<StepShape_PolyLoop.hxx>
#include<StepShape_PrecisionQualifier.hxx>
#include<StepShape_QualifiedRepresentationItem.hxx>
#include<StepShape_ReversibleTopologyItem.hxx>
#include<StepShape_RevolvedAreaSolid.hxx>
#include<StepShape_RevolvedFaceSolid.hxx>
#include<StepShape_RightAngularWedge.hxx>
#include<StepShape_RightCircularCone.hxx>
#include<StepShape_RightCircularCylinder.hxx>
#include<StepShape_SeamEdge.hxx>
#include<StepShape_ShapeDefinitionRepresentation.hxx>
#include<StepShape_ShapeDimensionRepresentation.hxx>
#include<StepShape_ShapeRepresentation.hxx>
#include<StepShape_ShapeRepresentationWithParameters.hxx>
#include<StepShape_Shell.hxx>
#include<StepShape_ShellBasedSurfaceModel.hxx>
#include<StepShape_SolidModel.hxx>
#include<StepShape_SolidReplica.hxx>
#include<StepShape_Sphere.hxx>
#include<StepShape_Subedge.hxx>
#include<StepShape_Subface.hxx>
#include<StepShape_SurfaceModel.hxx>
#include<StepShape_SweptAreaSolid.hxx>
#include<StepShape_SweptFaceSolid.hxx>
#include<StepShape_ToleranceMethodDefinition.hxx>
#include<StepShape_ToleranceValue.hxx>
#include<StepShape_TopologicalRepresentationItem.hxx>
#include<StepShape_Torus.hxx>
#include<StepShape_TransitionalShapeRepresentation.hxx>
#include<StepShape_TypeQualifier.hxx>
#include<StepShape_ValueQualifier.hxx>
#include<StepShape_Vertex.hxx>
#include<StepShape_VertexLoop.hxx>
#include<StepShape_VertexPoint.hxx>

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

#include<Handle_Standard_Transient.hxx>
#include<Handle_TCollection_HAsciiString.hxx>
#include<Handle_StepGeom_Axis1Placement.hxx>
#include<Handle_StepGeom_HArray1OfCartesianPoint.hxx>
#include<Handle_StepGeom_CartesianPoint.hxx>
#include<Handle_StepGeom_CartesianTransformationOperator3d.hxx>
#include<Handle_StepGeom_Direction.hxx>
#include<Handle_StepGeom_Axis2Placement3d.hxx>
#include<Handle_StepGeom_Surface.hxx>
#include<Handle_StepGeom_Curve.hxx>
#include<Handle_StepGeom_CurveBoundedSurface.hxx>
#include<Handle_StepRepr_ShapeRepresentationRelationship.hxx>
#include<Handle_StepRepr_ProductDefinitionShape.hxx>
#include<Handle_StepRepr_ShapeAspect.hxx>
#include<Handle_StepGeom_Point.hxx>
#include<Handle_StepBasic_MeasureWithUnit.hxx>
#include<Handle_StepBasic_MeasureValueMember.hxx>
#include<StepBasic_Unit.hxx>
#include<Handle_StepGeom_Pcurve.hxx>
%}
