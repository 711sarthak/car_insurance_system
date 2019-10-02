library my_prj.globals;
class CalculatorBrain {
  CalculatorBrain({this.ec,this.ty,this.dis,this.it,this.orgPri});
  final String ec;
  final String ty;
  final String dis;
  final String it;
  final String orgPri;
  double finPrinci;
  double dep;
  double discou;
  double finalPrice;
  double iDV;
  double odc;
  double ecPric;
  double base;
  var price;
  double ecPrice(){
    if(ec=='<=1000cc'){
      ecPric= 2055 ;
      return ecPric;
    }
    else if(ec=='<=2000cc'){
      ecPric= 2863;
      return ecPric;
    }
    else if(ec=='<=3000cc'){
      ecPric =7890;
      return ecPric;
    }
    else
      ecPric= 0;   
      return ecPric; 
  }
  double timeDep(){
    var price = double.parse(orgPri);
    if(ty=='0-1 yrs'){
      dep=price*0.05;
      return dep;
    }
    else if(ty=='1-2 yrs'){
      dep=price*0.1;
      return dep;
    }
    else if(ty=='2-3 yrs'){
      dep=price*0.2;
      return dep;
    }
    else if(ty=='3-4 yrs'){
      dep=price*0.3;
      return dep;
    }
    else if(ty=='4-5 yrs'){
      dep=price*0.4;
      return dep;
    }
    else if(ty=='5-6 yrs'){
      dep=price*0.5;
      return dep;
    }
    else
      dep=0;
      return dep;
  }
  double disco(){
     var price = double.parse(orgPri);
    if(dis=='5%'){
      discou=price*0.05;
      return discou;
    }
    else if(dis=='10%'){
      discou=price*0.1;
      return discou;
    }
    else if(dis=='15%'){
      discou=price*0.15;
      return discou;
    }
    else if(dis=='20%'){
      discou=price*0.2;
      return discou;
    }
    else
      discou=0;
      return discou;
  }
  double insuType(){

    base=ecPrice();
    dep=timeDep();
    discou=disco();
    var price = double.parse(orgPri);
    iDV= price-dep;
    odc=iDV-discou;
    if(it=='3rd party'){
      finalPrice=iDV;//ecPric+dep;
      return finalPrice;

    }
    else if(it=='Own Damage Cover'){
      finalPrice=odc;
      return finalPrice;
    }
    else if(it=='comprehensive'){
      finalPrice=ecPric+odc;
      return finalPrice;
    }
    else{
      finalPrice=0;
      return finalPrice;
    }
  }
  double main(){
  var carInsu=new CalculatorBrain();
  double hi=carInsu.insuType();
  return hi;
  }
}
