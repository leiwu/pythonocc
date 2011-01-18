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

#include<Handle_StepVisual_AnnotationOccurrence.hxx>
#include<Handle_StepVisual_AnnotationText.hxx>
#include<Handle_StepVisual_AnnotationTextOccurrence.hxx>
#include<Handle_StepVisual_AreaInSet.hxx>
#include<Handle_StepVisual_BackgroundColour.hxx>
#include<Handle_StepVisual_CameraImage.hxx>
#include<Handle_StepVisual_CameraImage2dWithScale.hxx>
#include<Handle_StepVisual_CameraImage3dWithScale.hxx>
#include<Handle_StepVisual_CameraModel.hxx>
#include<Handle_StepVisual_CameraModelD2.hxx>
#include<Handle_StepVisual_CameraModelD3.hxx>
#include<Handle_StepVisual_CameraUsage.hxx>
#include<Handle_StepVisual_Colour.hxx>
#include<Handle_StepVisual_ColourRgb.hxx>
#include<Handle_StepVisual_ColourSpecification.hxx>
#include<Handle_StepVisual_CompositeText.hxx>
#include<Handle_StepVisual_CompositeTextWithExtent.hxx>
#include<Handle_StepVisual_ContextDependentInvisibility.hxx>
#include<Handle_StepVisual_ContextDependentOverRidingStyledItem.hxx>
#include<Handle_StepVisual_CurveStyle.hxx>
#include<Handle_StepVisual_CurveStyleFont.hxx>
#include<Handle_StepVisual_CurveStyleFontPattern.hxx>
#include<Handle_StepVisual_DraughtingAnnotationOccurrence.hxx>
#include<Handle_StepVisual_DraughtingModel.hxx>
#include<Handle_StepVisual_DraughtingPreDefinedColour.hxx>
#include<Handle_StepVisual_DraughtingPreDefinedCurveFont.hxx>
#include<Handle_StepVisual_ExternallyDefinedCurveFont.hxx>
#include<Handle_StepVisual_ExternallyDefinedTextFont.hxx>
#include<Handle_StepVisual_FillAreaStyle.hxx>
#include<Handle_StepVisual_FillAreaStyleColour.hxx>
#include<Handle_StepVisual_HArray1OfBoxCharacteristicSelect.hxx>
#include<Handle_StepVisual_HArray1OfCurveStyleFontPattern.hxx>
#include<Handle_StepVisual_HArray1OfDirectionCountSelect.hxx>
#include<Handle_StepVisual_HArray1OfFillStyleSelect.hxx>
#include<Handle_StepVisual_HArray1OfInvisibleItem.hxx>
#include<Handle_StepVisual_HArray1OfLayeredItem.hxx>
#include<Handle_StepVisual_HArray1OfPresentationStyleAssignment.hxx>
#include<Handle_StepVisual_HArray1OfPresentationStyleSelect.hxx>
#include<Handle_StepVisual_HArray1OfStyleContextSelect.hxx>
#include<Handle_StepVisual_HArray1OfSurfaceStyleElementSelect.hxx>
#include<Handle_StepVisual_HArray1OfTextOrCharacter.hxx>
#include<Handle_StepVisual_Invisibility.hxx>
#include<Handle_StepVisual_MarkerMember.hxx>
#include<Handle_StepVisual_MechanicalDesignGeometricPresentationArea.hxx>
#include<Handle_StepVisual_MechanicalDesignGeometricPresentationRepresentation.hxx>
#include<Handle_StepVisual_OverRidingStyledItem.hxx>
#include<Handle_StepVisual_PlanarBox.hxx>
#include<Handle_StepVisual_PlanarExtent.hxx>
#include<Handle_StepVisual_PointStyle.hxx>
#include<Handle_StepVisual_PreDefinedColour.hxx>
#include<Handle_StepVisual_PreDefinedCurveFont.hxx>
#include<Handle_StepVisual_PreDefinedItem.hxx>
#include<Handle_StepVisual_PreDefinedTextFont.hxx>
#include<Handle_StepVisual_PresentationArea.hxx>
#include<Handle_StepVisual_PresentationLayerAssignment.hxx>
#include<Handle_StepVisual_PresentationLayerUsage.hxx>
#include<Handle_StepVisual_PresentationRepresentation.hxx>
#include<Handle_StepVisual_PresentationSet.hxx>
#include<Handle_StepVisual_PresentationSize.hxx>
#include<Handle_StepVisual_PresentationStyleAssignment.hxx>
#include<Handle_StepVisual_PresentationStyleByContext.hxx>
#include<Handle_StepVisual_PresentationView.hxx>
#include<Handle_StepVisual_PresentedItem.hxx>
#include<Handle_StepVisual_PresentedItemRepresentation.hxx>
#include<Handle_StepVisual_StyledItem.hxx>
#include<Handle_StepVisual_SurfaceSideStyle.hxx>
#include<Handle_StepVisual_SurfaceStyleBoundary.hxx>
#include<Handle_StepVisual_SurfaceStyleControlGrid.hxx>
#include<Handle_StepVisual_SurfaceStyleFillArea.hxx>
#include<Handle_StepVisual_SurfaceStyleParameterLine.hxx>
#include<Handle_StepVisual_SurfaceStyleSegmentationCurve.hxx>
#include<Handle_StepVisual_SurfaceStyleSilhouette.hxx>
#include<Handle_StepVisual_SurfaceStyleUsage.hxx>
#include<Handle_StepVisual_Template.hxx>
#include<Handle_StepVisual_TemplateInstance.hxx>
#include<Handle_StepVisual_TextLiteral.hxx>
#include<Handle_StepVisual_TextStyle.hxx>
#include<Handle_StepVisual_TextStyleForDefinedFont.hxx>
#include<Handle_StepVisual_TextStyleWithBoxCharacteristics.hxx>
#include<Handle_StepVisual_ViewVolume.hxx>
#include<StepVisual_AnnotationOccurrence.hxx>
#include<StepVisual_AnnotationText.hxx>
#include<StepVisual_AnnotationTextOccurrence.hxx>
#include<StepVisual_AreaInSet.hxx>
#include<StepVisual_AreaOrView.hxx>
#include<StepVisual_Array1OfBoxCharacteristicSelect.hxx>
#include<StepVisual_Array1OfCurveStyleFontPattern.hxx>
#include<StepVisual_Array1OfDirectionCountSelect.hxx>
#include<StepVisual_Array1OfFillStyleSelect.hxx>
#include<StepVisual_Array1OfInvisibleItem.hxx>
#include<StepVisual_Array1OfLayeredItem.hxx>
#include<StepVisual_Array1OfPresentationStyleAssignment.hxx>
#include<StepVisual_Array1OfPresentationStyleSelect.hxx>
#include<StepVisual_Array1OfStyleContextSelect.hxx>
#include<StepVisual_Array1OfSurfaceStyleElementSelect.hxx>
#include<StepVisual_Array1OfTextOrCharacter.hxx>
#include<StepVisual_BackgroundColour.hxx>
#include<StepVisual_BoxCharacteristicSelect.hxx>
#include<StepVisual_CameraImage.hxx>
#include<StepVisual_CameraImage2dWithScale.hxx>
#include<StepVisual_CameraImage3dWithScale.hxx>
#include<StepVisual_CameraModel.hxx>
#include<StepVisual_CameraModelD2.hxx>
#include<StepVisual_CameraModelD3.hxx>
#include<StepVisual_CameraUsage.hxx>
#include<StepVisual_CentralOrParallel.hxx>
#include<StepVisual_Colour.hxx>
#include<StepVisual_ColourRgb.hxx>
#include<StepVisual_ColourSpecification.hxx>
#include<StepVisual_CompositeText.hxx>
#include<StepVisual_CompositeTextWithExtent.hxx>
#include<StepVisual_ContextDependentInvisibility.hxx>
#include<StepVisual_ContextDependentOverRidingStyledItem.hxx>
#include<StepVisual_CurveStyle.hxx>
#include<StepVisual_CurveStyleFont.hxx>
#include<StepVisual_CurveStyleFontPattern.hxx>
#include<StepVisual_CurveStyleFontSelect.hxx>
#include<StepVisual_DirectionCountSelect.hxx>
#include<StepVisual_DraughtingAnnotationOccurrence.hxx>
#include<StepVisual_DraughtingModel.hxx>
#include<StepVisual_DraughtingPreDefinedColour.hxx>
#include<StepVisual_DraughtingPreDefinedCurveFont.hxx>
#include<StepVisual_ExternallyDefinedCurveFont.hxx>
#include<StepVisual_ExternallyDefinedTextFont.hxx>
#include<StepVisual_FillAreaStyle.hxx>
#include<StepVisual_FillAreaStyleColour.hxx>
#include<StepVisual_FillStyleSelect.hxx>
#include<StepVisual_FontSelect.hxx>
#include<StepVisual_HArray1OfBoxCharacteristicSelect.hxx>
#include<StepVisual_HArray1OfCurveStyleFontPattern.hxx>
#include<StepVisual_HArray1OfDirectionCountSelect.hxx>
#include<StepVisual_HArray1OfFillStyleSelect.hxx>
#include<StepVisual_HArray1OfInvisibleItem.hxx>
#include<StepVisual_HArray1OfLayeredItem.hxx>
#include<StepVisual_HArray1OfPresentationStyleAssignment.hxx>
#include<StepVisual_HArray1OfPresentationStyleSelect.hxx>
#include<StepVisual_HArray1OfStyleContextSelect.hxx>
#include<StepVisual_HArray1OfSurfaceStyleElementSelect.hxx>
#include<StepVisual_HArray1OfTextOrCharacter.hxx>
#include<StepVisual_Invisibility.hxx>
#include<StepVisual_InvisibilityContext.hxx>
#include<StepVisual_InvisibleItem.hxx>
#include<StepVisual_LayeredItem.hxx>
#include<StepVisual_MarkerMember.hxx>
#include<StepVisual_MarkerSelect.hxx>
#include<StepVisual_MarkerType.hxx>
#include<StepVisual_MechanicalDesignGeometricPresentationArea.hxx>
#include<StepVisual_MechanicalDesignGeometricPresentationRepresentation.hxx>
#include<StepVisual_OverRidingStyledItem.hxx>
#include<StepVisual_PlanarBox.hxx>
#include<StepVisual_PlanarExtent.hxx>
#include<StepVisual_PointStyle.hxx>
#include<StepVisual_PreDefinedColour.hxx>
#include<StepVisual_PreDefinedCurveFont.hxx>
#include<StepVisual_PreDefinedItem.hxx>
#include<StepVisual_PreDefinedTextFont.hxx>
#include<StepVisual_PresentationArea.hxx>
#include<StepVisual_PresentationLayerAssignment.hxx>
#include<StepVisual_PresentationLayerUsage.hxx>
#include<StepVisual_PresentationRepresentation.hxx>
#include<StepVisual_PresentationRepresentationSelect.hxx>
#include<StepVisual_PresentationSet.hxx>
#include<StepVisual_PresentationSize.hxx>
#include<StepVisual_PresentationSizeAssignmentSelect.hxx>
#include<StepVisual_PresentationStyleAssignment.hxx>
#include<StepVisual_PresentationStyleByContext.hxx>
#include<StepVisual_PresentationStyleSelect.hxx>
#include<StepVisual_PresentationView.hxx>
#include<StepVisual_PresentedItem.hxx>
#include<StepVisual_PresentedItemRepresentation.hxx>
#include<StepVisual_StyleContextSelect.hxx>
#include<StepVisual_StyledItem.hxx>
#include<StepVisual_SurfaceSide.hxx>
#include<StepVisual_SurfaceSideStyle.hxx>
#include<StepVisual_SurfaceStyleBoundary.hxx>
#include<StepVisual_SurfaceStyleControlGrid.hxx>
#include<StepVisual_SurfaceStyleElementSelect.hxx>
#include<StepVisual_SurfaceStyleFillArea.hxx>
#include<StepVisual_SurfaceStyleParameterLine.hxx>
#include<StepVisual_SurfaceStyleSegmentationCurve.hxx>
#include<StepVisual_SurfaceStyleSilhouette.hxx>
#include<StepVisual_SurfaceStyleUsage.hxx>
#include<StepVisual_Template.hxx>
#include<StepVisual_TemplateInstance.hxx>
#include<StepVisual_TextLiteral.hxx>
#include<StepVisual_TextOrCharacter.hxx>
#include<StepVisual_TextPath.hxx>
#include<StepVisual_TextStyle.hxx>
#include<StepVisual_TextStyleForDefinedFont.hxx>
#include<StepVisual_TextStyleWithBoxCharacteristics.hxx>
#include<StepVisual_ViewVolume.hxx>

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
#include<StepBasic_SizeSelect.hxx>
#include<Handle_StepGeom_CartesianPoint.hxx>
#include<Handle_StepRepr_RepresentationItem.hxx>
#include<StepGeom_Axis2Placement.hxx>
#include<Handle_StepData_SelectMember.hxx>
#include<Handle_StepRepr_Representation.hxx>
#include<Handle_StepGeom_Axis2Placement3d.hxx>
%}
