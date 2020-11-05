public virtual class Pen {
    String penBrand;
    String penColor;
    Integer penPrice;
    static Integer penCount = 1;
     
    //First constructor without any values
    public Pen(){
        penCount++;
    }
    //Second constructor, that initiates the objects variables
    public Pen(String pBrand, String pColor, Integer pPrice){
        penBrand = pBrand;
        penColor = pColor;
        penPrice = pPrice;
        penCount++;
    }
    
    Public Static void penCountNum(){
        System.debug(penCount);
    }
    
    Public void penInfo(){
        System.debug('I am a '+penColor+' '+penBrand+' Pen, with price: '+penPrice);
    }
    
    Public void Write1(){
            System.debug('This is Write1 method called form Pen Object');
    }
        Public virtual void Write2(){
            System.debug('This is Write2 method called form Pen Object');
    }

}