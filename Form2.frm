VERSION 5.00
Object = "{648A5603-2C6E-101B-82B6-000000000014}#1.1#0"; "MSCOMM32.OCX"
Begin VB.Form Form2 
   BackColor       =   &H000000FF&
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   2790
   ClientLeft      =   5280
   ClientTop       =   4395
   ClientWidth     =   10470
   ForeColor       =   &H0000FFFF&
   Icon            =   "Form2.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2790
   ScaleWidth      =   10470
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   795
      Left            =   8880
      TabIndex        =   1
      Top             =   600
      Width           =   855
   End
   Begin MSCommLib.MSComm MSComm1 
      Left            =   1200
      Top             =   1080
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
      DTREnable       =   -1  'True
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackColor       =   &H000000FF&
      Caption         =   "MADE BY SOURAV"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   30
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080FFFF&
      Height          =   690
      Left            =   2280
      TabIndex        =   0
      Top             =   1080
      Width           =   5640
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim s As String
Private Sub Form_Load()
MSComm1.CommPort = 3
MSComm1.settings = "9600,n,8,1"
MSComm1.RThreshold = 1
MSComm1.SThreshold = 1
MSComm1.PortOpen = True
End Sub
Private Sub Form_Unload(Cancel As Integer)
MSComm1.PortOpen = False
Open "C:\TurboC++\Disk\TurboC3\BIN\PLAY.txt" For Output As #1
t = ";"
Write #1, t
Close #1
End Sub
Private Sub MSComm1_OnComm()
Text1.Text = MSComm1.Input
Open "C:\TurboC++\Disk\TurboC3\BIN\PLAY.txt" For Output As #1
temp = Mid(Text1.Text, 1, 1)
Select Case temp
Case "s"
s = "a" 'c
Case "r"
s = "c" 'd
Case "g"
s = "e" 'e
Case "m"
s = "f" 'f
Case "p"
s = "h" 'g
Case "d"
s = "j" 'a
Case "n"
s = "l" 'b
Case "2"
s = "m" 'c
Case ";"
s = "s"
End Select
Write #1, s
Close #1
End Sub
