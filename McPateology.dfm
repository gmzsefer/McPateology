inherited frmMcPateology: TfrmMcPateology
  Caption = 'frmMcPateology'
  ClientHeight = 883
  ClientWidth = 1245
  ExplicitWidth = 1257
  ExplicitHeight = 921
  TextHeight = 13
  inherited pnlBaseBottom: TPanel
    Width = 1245
    ExplicitWidth = 1239
    inherited btnBaseClose: TcxButton
      Left = 1166
      ExplicitLeft = 1160
    end
    inherited btnBasePrint: TcxButton
      OnClick = nil
    end
  end
  inherited pnlMain: TPanel
    Width = 1245
    Height = 771
    ExplicitWidth = 1239
    ExplicitHeight = 762
    object scrlbxVertical: TScrollBox
      Left = 0
      Top = 0
      Width = 1245
      Height = 771
      VertScrollBar.Range = 1000
      Align = alClient
      AutoScroll = False
      AutoSize = True
      TabOrder = 0
      ExplicitWidth = 1239
      ExplicitHeight = 762
      object pnlFirst: TPanel
        Left = 0
        Top = 0
        Width = 1220
        Height = 193
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 1214
        object cbDetail: TcxComboBox
          Left = -206
          Top = 17
          TabOrder = 0
          Text = 'cxComboBox1'
          Width = 121
        end
        object lblRequestDate: TcxLabel
          Left = 21
          Top = 42
          Caption = #304'stem Tarihi:'
        end
        object lblPreparationStatus: TcxLabel
          Left = 19
          Top = 65
          Caption = 'Preprt Durumu :'
        end
        object lblMorphologyCode: TcxLabel
          Left = 21
          Top = 96
          Caption = 'Morfoloji Kodu :'
        end
        object lblResidantialArea: TcxLabel
          Left = 21
          Top = 123
          Caption = 'Yerle'#351'im Yeri :'
        end
        object lblBasicFeatureOfTexture: TcxLabel
          Left = 317
          Top = 42
          Caption = 'Dokunun Temel '#214'zelli'#287'i :'
        end
        object lblSampleMethod: TcxLabel
          Left = 317
          Top = 69
          Caption = 'Nuumune Al'#305'm '#350'ekli  :'
        end
        object icbPreparationStatus: TcxDBImageComboBox
          Left = 119
          Top = 69
          DataBinding.DataField = 'PREPARATION_STATUS'
          DataBinding.DataSource = DataSource2
          Properties.Items = <>
          TabOrder = 7
          Width = 160
        end
        object icbMorphologyCode: TcxDBImageComboBox
          Left = 119
          Top = 96
          DataBinding.DataField = 'MORPHOLOGY_CODE'
          DataBinding.DataSource = DataSource2
          Properties.Items = <>
          TabOrder = 8
          Width = 160
        end
        object icbResidentialArea: TcxDBImageComboBox
          Left = 121
          Top = 123
          DataBinding.DataField = 'RESIDENTIAL_AREA'
          DataBinding.DataSource = DataSource2
          Properties.Items = <>
          TabOrder = 9
          Width = 160
        end
        object icbBasicFeatureOfTexture: TcxDBImageComboBox
          Left = 443
          Top = 42
          DataBinding.DataField = 'BASIC_FEATURE_OF_TEXTURE'
          DataBinding.DataSource = DataSource2
          Properties.Items = <>
          TabOrder = 10
          Width = 160
        end
        object icbSampleMethod: TcxDBImageComboBox
          Left = 443
          Top = 69
          DataBinding.DataField = 'SAMPLING_METHOD'
          DataBinding.DataSource = DataSource2
          Properties.Items = <>
          TabOrder = 11
          Width = 160
        end
        object icbApprovingPatologies: TcxDBImageComboBox
          Left = 443
          Top = 123
          DataBinding.DataField = 'APPROVING_PATOLOGIES'
          DataBinding.DataSource = DataSource2
          Properties.Items = <>
          TabOrder = 12
          Width = 160
        end
        object icbSentByDoctor: TcxDBImageComboBox
          Left = 443
          Top = 150
          DataBinding.DataField = 'SENT_BY_DOCTOR'
          DataBinding.DataSource = DataSource2
          Properties.Items = <>
          TabOrder = 13
          Width = 160
        end
        object icbSecondDoctor: TcxDBImageComboBox
          Left = 764
          Top = 17
          DataBinding.DataField = 'SECOND_DR'
          DataBinding.DataSource = DataSource2
          Properties.Items = <>
          TabOrder = 14
          Width = 160
        end
        object icbSendingClinic: TcxDBImageComboBox
          Left = 119
          Top = 150
          DataBinding.DataField = 'SENDING_CLINIC'
          DataBinding.DataSource = DataSource2
          Properties.Items = <>
          TabOrder = 15
          Width = 160
        end
        object lblSendingClinic: TcxLabel
          Left = 21
          Top = 150
          Caption = 'G'#246'nderen Klinik :'
        end
        object lblApprovalDate: TcxLabel
          Left = 317
          Top = 92
          Caption = 'Onay Tarihi :'
        end
        object lblApprovelPatologıes: TcxLabel
          Left = 317
          Top = 123
          Caption = 'Onaylayan Patolog :'
        end
        object lblSendindDoctor: TcxLabel
          Left = 319
          Top = 158
          Caption = 'G'#246'nderen Doktor :'
        end
        object lblSecondDoctor: TcxLabel
          Left = 656
          Top = 18
          Caption = 'Varsa 2. Doktor :'
        end
        object icbApprovalDate: TcxDBDateEdit
          Left = 443
          Top = 96
          DataBinding.DataField = 'APPROVAL_DATE'
          DataBinding.DataSource = DataSource2
          TabOrder = 21
          Width = 160
        end
        object icbRequestDate: TcxDBDateEdit
          Left = 119
          Top = 42
          DataBinding.DataField = 'REQUEST_DATE'
          DataBinding.DataSource = DataSource2
          TabOrder = 22
          Width = 160
        end
        object lblCtime: TcxLabel
          Left = 21
          Top = 19
          Caption = #304'stem Tarihi:'
        end
        object icbDate: TcxDBDateEdit
          Left = 119
          Top = 15
          DataBinding.DataField = 'CTIME'
          DataBinding.DataSource = DataSource2
          Enabled = False
          TabOrder = 24
          Width = 160
        end
        object lblCUSER: TcxLabel
          Left = 317
          Top = 19
          Caption = 'Kullan'#305'c'#305' :'
        end
        object teCuser: TcxDBTextEdit
          Left = 443
          Top = 15
          DataBinding.DataField = 'CUSER'
          DataBinding.DataSource = DataSource2
          Enabled = False
          TabOrder = 26
          Width = 121
        end
      end
      object pnlMiddle: TPanel
        Left = 0
        Top = 193
        Width = 1220
        Height = 40
        Align = alTop
        TabOrder = 1
        ExplicitWidth = 1214
        object mmTissue: TcxDBMemo
          Left = 443
          Top = 6
          DataBinding.DataField = 'B'
          TabOrder = 0
          Height = 17
          Width = 160
        end
        object lblBiopsi: TcxLabel
          Left = 33
          Top = 6
          Caption = 'Biyopsi  No :'
        end
        object lbltissue: TcxLabel
          Left = 307
          Top = 6
          Caption = 'Par'#231'an'#305'n Al'#305'nd'#305#287#305' Doku :'
        end
        object mmBiopsy: TcxDBMemo
          Left = 119
          Top = 6
          DataBinding.DataField = 'BIOPSY_NO'
          DataBinding.DataSource = DataSource2
          TabOrder = 3
          Height = 17
          Width = 160
        end
        object Parçanın: TcxLabel
          Left = -175
          Top = 310
        end
      end
      object pgDetail: TPageControl
        Left = 0
        Top = 233
        Width = 1220
        Height = 767
        ActivePage = tsDetail
        Align = alClient
        TabOrder = 2
        StyleName = 'detail'
        ExplicitWidth = 1214
        object tsDetail: TTabSheet
          Caption = 'Detay'
          object pnlLast: TPanel
            Left = 0
            Top = 0
            Width = 1212
            Height = 739
            Align = alClient
            ParentBackground = False
            TabOrder = 0
            ExplicitWidth = 1206
            object mmDetail: TcxDBMemo
              Left = 117
              Top = 17
              DataBinding.DataField = 'DETAIL'
              DataBinding.DataSource = DataSource2
              Properties.ScrollBars = ssVertical
              TabOrder = 0
              Height = 60
              Width = 776
            end
            object mmMicroscobic: TcxDBMemo
              Left = 125
              Top = 227
              DataBinding.DataField = 'MICROSCOPIC_FIND'
              DataBinding.DataSource = DataSource2
              TabOrder = 1
              Height = 60
              Width = 601
            end
            object mmNote: TcxDBMemo
              Left = 100
              Top = 631
              DataBinding.DataField = 'NOTE'
              DataBinding.DataSource = DataSource2
              Properties.ScrollBars = ssVertical
              TabOrder = 2
              Height = 60
              Width = 797
            end
            object mmFrozenRewiev: TcxDBMemo
              Left = 120
              Top = 128
              DataBinding.DataField = 'FROZEN_REVIEW_RESULT'
              DataBinding.DataSource = DataSource2
              Properties.ScrollBars = ssVertical
              TabOrder = 3
              Height = 60
              Width = 777
            end
            object lblFrozen: TcxLabel
              Left = 17
              Top = 105
              Caption = 'Frozen '#304'nceleme Sonucu :'
            end
            object lblMicroscobic: TcxLabel
              Left = 30
              Top = 204
              Caption = ' Mikroskopik Bilgi :'
            end
            object lblDiagnosıs: TcxLabel
              Left = 42
              Top = 293
              Caption = 'Tan'#305' :'
            end
            object lblSpecialMethod: TcxLabel
              Left = 24
              Top = 404
              Caption = #214'zel Y'#246'ntemler :'
            end
            object lblSpecialMethods: TcxLabel
              Left = 46
              Top = 439
              Caption = #214'zel Histokimyasal Boyalar :'
            end
            object lblImmunohıstochemicial: TcxLabel
              Left = 46
              Top = 469
              Caption = 'imm'#252'nohistokimyasal '#304'nceleme :'
            end
            object lblImmunoflrence: TcxLabel
              Left = 46
              Top = 492
              Caption = #304'mm'#252'nfloresan '#304'nceleme :'
            end
            object mmDiagnosis: TcxDBMemo
              Left = 115
              Top = 317
              DataBinding.DataField = 'DIAGNOSIS'
              DataBinding.DataSource = DataSource2
              Properties.ScrollBars = ssVertical
              TabOrder = 11
              Height = 60
              Width = 778
            end
            object lblMolecular: TcxLabel
              Left = 46
              Top = 529
              Caption = 'Molek'#252'ler '#304'nceleme :'
            end
            object lblElectronMıcroscobıc: TcxLabel
              Left = 46
              Top = 552
              Caption = 'Elektron Mikroskobik '#304'nceleme :'
            end
            object lblNote: TcxLabel
              Left = 58
              Top = 606
              Caption = 'Note :'
            end
            object mmSpecialMethod: TcxDBMemo
              Left = 272
              Top = 438
              DataBinding.DataField = 'SPECIAL_HIST_EXAM'
              DataBinding.DataSource = DataSource2
              Properties.ScrollBars = ssVertical
              TabOrder = 15
              Height = 24
              Width = 624
            end
            object mmImmuhıstochemıal: TcxDBMemo
              Left = 272
              Top = 468
              DataBinding.DataField = 'IMMUN_EXAMINATION'
              DataBinding.DataSource = DataSource2
              Properties.ScrollBars = ssVertical
              TabOrder = 16
              Height = 24
              Width = 624
            end
            object mmImmuflorecen: TcxDBMemo
              Left = 272
              Top = 498
              DataBinding.DataField = 'IMMUN_ANALYSIS'
              DataBinding.DataSource = DataSource2
              Properties.ScrollBars = ssVertical
              TabOrder = 17
              Height = 24
              Width = 625
            end
            object mmMolecularExaminatıon: TcxDBMemo
              Left = 272
              Top = 528
              DataBinding.DataField = 'MOLECULAR_STUDY'
              DataBinding.DataSource = DataSource2
              Properties.ScrollBars = ssVertical
              TabOrder = 18
              Height = 24
              Width = 625
            end
            object mmElectronMicroscobic: TcxDBMemo
              Left = 272
              Top = 558
              DataBinding.DataField = 'ELECTRON_MICROANALYSIS'
              DataBinding.DataSource = DataSource2
              Properties.ScrollBars = ssVertical
              TabOrder = 19
              Height = 24
              Width = 628
            end
          end
        end
      end
    end
  end
  inherited gbBaseTop: TcxGroupBox
    ExplicitWidth = 1239
    Width = 1245
    inherited pnlDiag: TPanel
      ExplicitLeft = 565
      ExplicitTop = 4
      ExplicitHeight = 69
      inherited mmDiag: TcxMemo
        ExplicitHeight = 54
      end
    end
    inherited pnlGenLeft: TPanel
      ExplicitLeft = 4
      ExplicitTop = 4
      ExplicitHeight = 69
      inherited pnlPatientDetail: TPanel
        ExplicitTop = 32
        inherited Panel7: TPanel
          inherited cxLabel6: TcxLabel
            AnchorY = 8
          end
          inherited lblDoctor: TcxLabel
            AnchorY = 25
          end
        end
        inherited Panel8: TPanel
          inherited lblAssCaption: TcxLabel
            AnchorY = 8
          end
          inherited lblAss: TcxLabel
            AnchorY = 25
          end
        end
        inherited pnlIsPregnant: TPanel
          inherited cxLabel7: TcxLabel
            AnchorY = 8
          end
        end
        inherited Panel17: TPanel
          inherited cxLabel12: TcxLabel
            AnchorY = 8
          end
          inherited lblSecAss: TcxLabel
            AnchorY = 25
          end
        end
        inherited Panel1: TPanel
          inherited lblLength: TcxLabel
            AnchorY = 35
          end
        end
        inherited Panel2: TPanel
          inherited lblWeight: TcxLabel
            AnchorY = 35
          end
        end
        inherited Panel3: TPanel
          inherited cxLabel13: TcxLabel
            AnchorY = 8
          end
          inherited teUPN: TcxTextEdit
            ExplicitHeight = 20
          end
        end
      end
      inherited pnlPatientInfo: TPanel
        inherited lblPatName: TcxLabel
          AnchorX = 124
          AnchorY = 18
        end
        inherited pnlProt: TPanel
          inherited cxLabel1: TcxLabel
            AnchorY = 8
          end
          inherited teProt: TcxTextEdit
            ExplicitHeight = 20
          end
        end
        inherited pnlPatInfoAge: TPanel
          inherited lblAge: TcxLabel
            AnchorY = 35
          end
        end
        inherited pnlPatInfoBirthDate: TPanel
          inherited lblBirth: TcxLabel
            AnchorY = 35
          end
        end
        inherited pnlPatInfoSexuality: TPanel
          inherited lblGender: TcxLabel
            AnchorY = 35
          end
        end
      end
    end
  end
  inherited AppEvntsBase: TApplicationEvents
    Left = 883
    Top = 4
  end
  inherited OracleDataSet1: TOracleDataSet
    SQL.Strings = (
      'SELECT MSS.*, MSS.ROWID '
      '  FROM TMP_MC_SAMPLE_STATUS MSS'
      ' WHERE MSS.COM_ID = :COM_ID')
    Variables.Data = {
      04000000010000000E0000003A0043004F004D005F0049004400030000000000
      000000000000}
    SequenceField.Field = 'ID'
    SequenceField.Sequence = 'MC_TMP_MC_SAMPLE_STATUS_SEQ'
    SequenceField.ApplyMoment = amOnNewRecord
    Left = 792
    Top = 120
  end
  inherited DataSource1: TDataSource
    Left = 1084
    Top = 99
  end
  inherited OracleDataSet1Det: TOracleDataSet
    SQL.Strings = (
      'SELECT SSD.*,'
      '       SSD.ROWID'
      '  FROM TMP_MC_SMPL_STTS_DET SSD'
      ' WHERE SSD.SS_ID = :SS_ID'
      ' ORDER BY SSD.ID DESC')
    Variables.Data = {
      04000000010000000C0000003A00530053005F00490044000300000000000000
      00000000}
    SequenceField.Field = 'ID'
    SequenceField.Sequence = 'MC_TMP_MC_SMPL_STTS_DET_SEQ'
    SequenceField.ApplyMoment = amOnNewRecord
    DetailFields = 'SS_ID'
    Left = 974
    Top = 131
  end
  inherited DataSource2: TDataSource
    Left = 1042
    Top = 32
  end
end
