unit McPateology;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, byzMCBase, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer, cxEdit, cxCheckBox,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.DBCtrls, cxDBEdit, cxDropDownEdit, cxMaskEdit,
  cxCheckComboBox, cxCustomListBox, cxCheckListBox, Vcl.CheckLst, Data.DB,
  OracleData, Vcl.AppEvnts, cxTextEdit, dxGDIPlusClasses, cxImage, Vcl.ExtCtrls,
  cxMemo, cxLabel, cxGroupBox, cxButtons, cxSpinEdit, cxSpinButton,cxDBLabel,
  dxCore, cxDateUtils, cxCalendar, dtmdMedCard, cxImageComboBox, CommonConf, MsgConst,
  cxScrollBox;

type
  TfrmMcPateology = class(TfrmbyzMCBase)
    scrlbxVertical: TScrollBox;
    pnlFirst: TPanel;
    cbDetail: TcxComboBox;
    lblRequestDate: TcxLabel;
    lblPreparationStatus: TcxLabel;
    lblMorphologyCode: TcxLabel;
    lblResidantialArea: TcxLabel;
    lblBasicFeatureOfTexture: TcxLabel;
    lblSampleMethod: TcxLabel;
    icbPreparationStatus: TcxDBImageComboBox;
    icbMorphologyCode: TcxDBImageComboBox;
    icbResidentialArea: TcxDBImageComboBox;
    icbBasicFeatureOfTexture: TcxDBImageComboBox;
    icbSampleMethod: TcxDBImageComboBox;
    icbApprovingPatologies: TcxDBImageComboBox;
    icbSentByDoctor: TcxDBImageComboBox;
    icbSecondDoctor: TcxDBImageComboBox;
    icbSendingClinic: TcxDBImageComboBox;
    lblSendingClinic: TcxLabel;
    lblApprovalDate: TcxLabel;
    lblApprovelPatologýes: TcxLabel;
    lblSendindDoctor: TcxLabel;
    lblSecondDoctor: TcxLabel;
    icbApprovalDate: TcxDBDateEdit;
    icbRequestDate: TcxDBDateEdit;
    lblCtime: TcxLabel;
    icbDate: TcxDBDateEdit;
    lblCUSER: TcxLabel;
    teCuser: TcxDBTextEdit;
    mmTissue: TcxDBMemo;
    lblBiopsi: TcxLabel;
    lbltissue: TcxLabel;
    mmBiopsy: TcxDBMemo;
    pgDetail: TPageControl;
    tsDetail: TTabSheet;
    pnlLast: TPanel;
    mmDetail: TcxDBMemo;
    mmMicroscobic: TcxDBMemo;
    mmNote: TcxDBMemo;
    mmFrozenRewiev: TcxDBMemo;
    lblFrozen: TcxLabel;
    lblMicroscobic: TcxLabel;
    lblDiagnosýs: TcxLabel;
    lblSpecialMethod: TcxLabel;
    lblSpecialMethods: TcxLabel;
    lblImmunohýstochemicial: TcxLabel;
    lblImmunoflrence: TcxLabel;
    mmDiagnosis: TcxDBMemo;
    lblMolecular: TcxLabel;
    lblElectronMýcroscobýc: TcxLabel;
    lblNote: TcxLabel;
    mmSpecialMethod: TcxDBMemo;
    mmImmuhýstochemýal: TcxDBMemo;
    mmImmuflorecen: TcxDBMemo;
    mmMolecularExaminatýon: TcxDBMemo;
    mmElectronMicroscobic: TcxDBMemo;
    pnlMiddle: TPanel;
    Parçanýn: TcxLabel;
    procedure btnBaseAddClick(Sender: TObject); override;
    procedure FormCreate(Sender: TObject); override;
    procedure btnBaseSaveClick(Sender: TObject); override;
    procedure btnBaseDeleteClick(Sender: TObject); override;
  private
    lgvOracleDataSet1: TOracleDataSet;
  public
    procedure ArrangeMcPateologyForm(pOraDataset:TOracleDataset);
    procedure CreatePainScale;
  end;

var
  frmMcPateology: TfrmMcPateology;

implementation

{$R *.dfm}

uses DtMdGeneral;

procedure TfrmMcPateology.ArrangeMcPateologyForm(pOraDataset:TOracleDataset);
begin

  if pOraDataset = nil then
  begin
    OracleDataSet1.SetVariable('COM_ID',FBPatientInfo.BConOfMedId);
    OracleDataSet1.Open;
    if OracleDataSet1.isempty then
    begin
      OracleDataSet1.insert;
      OracleDataSet1.fieldByName('COM_ID').ASINTEGER := FBPatientInfo.BConOfMedId;
      OracleDataSet1.POST;
    end;
  end
  else
  begin
    //byzmedcarddan cagrildiysa
    BorderStyle := bsNone;
    Align := alClient;
    BorderWidth := 10;
    lgvFrmOpenFromMedCard := True;

    lgvOracleDataSet1 := pOraDataset;
    gbBaseTop.visible := false;
    pnlBaseBottom.visible := false;
    OracleDataSet1Det.Readonly := true;
    OracleDataSet1Det.Master := lgvOracleDataSet1;
    OracleDataSet1Det.ReadOnly := OracleDataSet1Det.RecordCount = 0;
  end;

  if OracleDataSet1Det.SQL.TExt <> '' then
    OracleDataSet1Det.Open;

  CreatePainScale;
  btnBaseAdd.Enabled := OracleDataSet1Det.RecordCount = 0;
end;


procedure TfrmMcPateology.btnBaseAddClick(Sender: TObject);
begin
  inherited;
  if (OracleDataSet1Det.ReadOnly) and (lgvOracleDataSet1 <> nil) then
    Exit;

  if OracleDataSet1Det.RecordCount >= 1 then
    Exit;


  OracleDataSet1Det.ReadOnly := False;
  OracleDataSet1Det.Insert;
  OracleDataSet1Det.FieldByName('CTIME').AsDateTime := RealNow;
  OracleDataSet1Det.FieldByName('CUSER').AsString := UserName;
  OracleDataSet1Det.Post;
  OracleDataSet1Det.Refresh;
  btnBaseAdd.Enabled := OracleDataSet1Det.RecordCount = 0;
end;

procedure TfrmMcPateology.btnBaseDeleteClick(Sender: TObject);
begin
  inherited;
  if (lgvOracleDataSet1 <> nil) then
    Exit;
  if OracleDataSet1Det.RecordCount = 0 then
    Exit;
  if Not(OracleDataSet1Det.ReadOnly) then
  begin
    if MessageCustom(msgMultiUsed169) then
    	OracleDataSet1Det.Delete
    else
    	Exit;
  end;
  btnBaseAdd.Enabled := OracleDataSet1Det.RecordCount = 0;
   OracleDataSet1Det.ReadOnly := OracleDataSet1Det.RecordCount = 0;
end;

procedure TfrmMcPateology.btnBaseSaveClick(Sender: TObject);
begin
  inherited;
  if OracleDataSet1.State <> dsBrowse then
    OracleDataSet1.Post;
  if OracleDataSet1Det.State <> dsBrowse then
    OracleDataSet1Det.Post;
end;

procedure TfrmMcPateology.CreatePainScale;
begin
  icbPreparationStatus.RepositoryItem := dmMedCard.CreateImgCmbBox('eriPREPARATION_STATUS_McPateology', 1215);
  icbMorphologyCode.RepositoryItem := dmMedCard.CreateImgCmbBox('eriMORPHOLOGY_CODE_McPateology', 1216);
  icbResidentialArea.RepositoryItem := dmMedCard.CreateImgCmbBox('eriRESIDENTIAL_AREA_McPateology', 1217);
  icbSendingClinic.RepositoryItem := dmMedCard.CreateImgCmbBox('eriSENDING_CLINIC_McPateology', 1218);
  icbBasicFeatureOfTexture.RepositoryItem := dmMedCard.CreateImgCmbBox('eriBASIC_FEATURE_OF_TEXTURE_McPateology', 1219);
  icbSampleMethod.RepositoryItem := dmMedCard.CreateImgCmbBox('eriSAMPLING_METHOD_McPateology', 1220);
  icbApprovingPatologies.RepositoryItem := dmMedCard.CreateImgCmbBox('eriAPPROVING_PATOLOGIES_McPateology', 1221);
  icbSentByDoctor.RepositoryItem := dmMedCard.CreateImgCmbBox('eriSENT_BY_DOCTOR_McPateology', 1222);
  icbSecondDoctor.RepositoryItem := dmMedCard.CreateImgCmbBox('eriSECOND_DR_McPateology', 1223);
end;
procedure TfrmMcPateology.FormCreate(Sender: TObject);
begin
  inherited;
  btnBaseClose.Visible := True;
  btnBaseSave.Visible := True;
  btnBasePrint.Visible := True;
  btnBaseDelete.Visible := True;
end;

end.
