class music{
  int Timer=0;
  int modo;
  boolean rep=true;
  music(int modot, int Timert){
    modo=modot;    
    Timer=Timert;
  }
  
  void Start(){
    switch(modo){
      case 0:  //Menu               YA
      P_2.pause();
      P_1.pause();
      print("K");
      if(rep==true){
        P_3.play();
        print("a");
        Timer=frameCount%11850;
        if(Timer==0){
         rep=true;
        }
        else{
          rep=false;
        }
      }
      break;
      
      case 1:         //JUEGO                     YA
      P_3.pause();      
      if(rep==true){
        P_4.play(); 
        Timer=frameCount%9240;
        if(Timer==0){
         rep=true;
        }
        else{
          rep=false;
        }
      }      
      break;
      
      case 4:   //   Perder   //YA
      P_4.pause();
      
      if(rep==true){
        P_1.play();
        Timer=frameCount%5310;
        if(Timer==0){
         rep=true;
        }
        else{
          rep=false;
        }
      }      
      break;      

      case 7:  //PANTALLA INICIAL          YA
      if(rep==true){
        P_1.play();
        Timer=frameCount%5310;
        if(Timer==0){
         rep=true;
        }
        else{
          rep=false;
        }
      }      
      break;        
     
      case 8:                   //PARA LAS FRASES 
      P_1.pause();
      P_4.pause();
      if(rep==true){
        P_2.play();       
        Timer=frameCount%7410;
        if(Timer==0){
         rep=true;
        }
        else{
          rep=false;
        }
      }         
      break;    
  
      case 9:                   //GANAR
      P_4.pause();
      if(rep==true){
        P_2.play();       
        Timer=frameCount%7410;
        if(Timer==0){
         rep=true;
        }
        else{
          rep=false;
        }
      }         
      break;        
      default:
      break;
      
      
    }
    
    
    
    
    
    
  }
}
