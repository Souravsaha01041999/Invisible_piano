int dis=0;
#define def 500
#define gap 80
int sa=100;
int re=(sa+def)+gap;
int ga=(re+def)+gap;
int ma=(ga+def)+gap;
int pa=(ma+def)+gap;
int dha=(pa+def)+gap;
int ne=(dha+def)+gap;
int sa2=(ne+def)+gap;
void setup() {
  pinMode(11,OUTPUT);
  digitalWrite(11,1);
  pinMode(12,OUTPUT);
  pinMode(13,INPUT);
  Serial.begin(9600);
}
void loop() {
  digitalWrite(12,1);
  delayMicroseconds(10);
  digitalWrite(12,0);
  dis=pulseIn(13,HIGH);
  if((sa<=dis)&&((sa+def)>=dis))
  {
    Serial.print("s");
  }
  else if((re<=dis)&&((re+def)>=dis))
  {
    Serial.print("r");
  }
  else if((ga<=dis)&&((ga+def)>=dis))
  {
    Serial.print("g");
  }
  else if((ma<=dis)&&((ma+def)>=dis))
  {
    Serial.print("m");
  }
  else if((pa<=dis)&&((pa+def)>=dis))
  {
    Serial.print("p");
  }
  else if((dha<=dis)&&((dha+def)>=dis))
  {
    Serial.print("d");
  }
  else if((ne<=dis)&&((ne+def)>=dis))
  {
    Serial.print("n");
  }
  else if((sa2<=dis)&&((sa2+def)>=dis))
  {
    Serial.print("2");
  }
  else
  {
    Serial.print(";");
  }
}
