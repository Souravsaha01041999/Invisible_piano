VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.5#0"; "comctl32.ocx"
Object = "{6BF52A50-394A-11D3-B153-00C04F79FAA6}#1.0#0"; "wmp.dll"
Begin VB.Form Form1 
   BackColor       =   &H000000FF&
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   1965
   ClientLeft      =   5085
   ClientTop       =   4200
   ClientWidth     =   10320
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1965
   ScaleWidth      =   10320
   Begin VB.Timer Timer1 
      Interval        =   200
      Left            =   3120
      Top             =   360
   End
   Begin ComctlLib.ProgressBar ProgressBar1 
      Height          =   615
      Left            =   840
      TabIndex        =   0
      Top             =   600
      Width           =   8655
      _ExtentX        =   15266
      _ExtentY        =   1085
      _Version        =   327682
      Appearance      =   1
   End
   Begin WMPLibCtl.WindowsMediaPlayer WindowsMediaPlayer1 
      Height          =   735
      Left            =   480
      TabIndex        =   1
      Top             =   240
      Visible         =   0   'False
      Width           =   1695
      URL             =   ""
      rate            =   1
      balance         =   0
      currentPosition =   0
      defaultFrame    =   ""
      playCount       =   1
      autoStart       =   -1  'True
      currentMarker   =   0
      invokeURLs      =   -1  'True
      baseURL         =   ""
      volume          =   50
      mute            =   0   'False
      uiMode          =   "full"
      stretchToFit    =   0   'False
      windowlessVideo =   0   'False
      enabled         =   -1  'True
      enableContextMenu=   -1  'True
      fullScreen      =   0   'False
      SAMIStyle       =   ""
      SAMILang        =   ""
      SAMIFilename    =   ""
      captioningID    =   ""
      enableErrorDialogs=   0   'False
      _cx             =   2990
      _cy             =   1296
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
WindowsMediaPlayer1.URL = "F:\MY SWEET MEMORY.mp3"
End Sub
Private Sub Timer1_Timer()
ProgressBar1.Value = ProgressBar1.Value + 5
If ProgressBar1.Value = 100 Then
Form2.Show
Unload Me
End If
End Sub
