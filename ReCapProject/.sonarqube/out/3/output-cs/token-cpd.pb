ñ
VC:\Users\User\Documents\MyCSharpProjects\ReCapProject\Business\Abstract\ICarService.cs
	namespace

 	
Business


 
.

 
Abstract

 
{ 
public 

	interface 
ICarService  
{ 
IDataResult 
< 
List 
< 
Car 
> 
> 
GetAll %
(% &
)& '
;' (
IDataResult 
< 
List 
< 
Car 
> 
> 
GetCarsByBrandId /
(/ 0
int0 3
id4 6
)6 7
;7 8
IDataResult 
< 
List 
< 
Car 
> 
> 
GetCarsByColorId /
(/ 0
int0 3
id4 6
)6 7
;7 8
IDataResult 
< 
List 
< 
Car 
> 
> 
GetByDailyPrice .
(. /
decimal/ 6
min7 :
,: ;
decimal< C
maxD G
)G H
;H I
IDataResult 
< 
List 
< 
CarDetailsDto &
>& '
>' (
GetCarDetails) 6
(6 7
)7 8
;8 9
IResult 
Add 
( 
Car 
car 
) 
; 
IResult 
Update 
( 
Car 
car 
) 
;  
IResult 
Delete 
( 
Car 
car 
) 
;  
} 
} ­
[C:\Users\User\Documents\MyCSharpProjects\ReCapProject\Business\Abstract\ICustomerService.cs
	namespace		 	
Business		
 
.		 
Abstract		 
{

 
public 

	interface 
ICustomerService %
{ 
IResult 
Add 
( 
Customer 
customer %
)% &
;& '
} 
} ë
YC:\Users\User\Documents\MyCSharpProjects\ReCapProject\Business\Abstract\IRentalService.cs
	namespace		 	
Business		
 
.		 
Abstract		 
{

 
public 

	interface 
IRentalService #
{ 
IResult 
IsAvailableForRent "
(" #
int# &
carId' ,
), -
;- .
IResult 
IsCarEverRented 
(  
int  #
carId$ )
)) *
;* +
IResult 
IsCarReturned 
( 
int !
carId" '
)' (
;( )
IResult 
Add 
( 
Rental 
rental !
)! "
;" #
IDataResult 
< 
List 
< 
Rental 
>  
>  !
GetAll" (
(( )
)) *
;* +
} 
} ÷
WC:\Users\User\Documents\MyCSharpProjects\ReCapProject\Business\Abstract\IUserService.cs
	namespace		 	
Business		
 
.		 
Abstract		 
{

 
public 

	interface 
IUserService !
{ 
IDataResult 
< 
List 
< 
User 
> 
> 
GetAll  &
(& '
)' (
;( )
IDataResult 
< 
User 
> 
GetById !
(! "
int" %
id& (
)( )
;) *
IResult 
Add 
( 
User 
user 
) 
; 
IResult 
Delete 
( 
User 
user  
)  !
;! "
IResult 
Update 
( 
User 
user  
)  !
;! "
} 
} µ5
UC:\Users\User\Documents\MyCSharpProjects\ReCapProject\Business\Concrete\CarManager.cs
	namespace 	
Business
 
. 
Concrete 
{ 
public 

class 

CarManager 
: 
ICarService )
{ 
ICarDal 
_carDal 
; 
public 

CarManager 
( 
ICarDal !
carDal" (
)( )
{ 	
_carDal 
= 
carDal 
; 
} 	
public 
IDataResult 
< 
List 
<  
CarDetailsDto  -
>- .
>. /
GetCarDetails0 =
(= >
)> ?
{ 	
if 
( 
DateTime 
. 
Now 
. 
Hour !
==" $
DateTime% -
.- .
Now. 1
.1 2
Hour2 6
)6 7
{ 
return 
new 
ErrorDataResult *
<* +
List+ /
</ 0
CarDetailsDto0 =
>= >
>> ?
(? @
Messages@ H
.H I
MaintenanceTimeI X
)X Y
;Y Z
} 
return   
new   
SuccessDataResult   (
<  ( )
List  ) -
<  - .
CarDetailsDto  . ;
>  ; <
>  < =
(  = >
_carDal  > E
.  E F
GetCarDetails  F S
(  S T
)  T U
,  U V
Messages  W _
.  _ `
CarDetailsListed  ` p
)  p q
;  q r
}!! 	
public## 
IResult## 
Add## 
(## 
Car## 
car## "
)##" #
{$$ 	
if%% 
(%% 
car%% 
.%% 

DailyPrice%% 
<=%% !
$num%%" #
)%%# $
{&& 
return'' 
new'' 
ErrorResult'' &
(''& '
Messages''' /
.''/ 0
DailyPriceInvalid''0 A
)''A B
;''B C
}(( 
else)) 
if)) 
()) 
car)) 
.)) 
CarName))  
.))  !
Length))! '
<))( )
$num))* +
)))+ ,
{** 
return++ 
new++ 
ErrorResult++ &
(++& '
Messages++' /
.++/ 0
CarNameInvalid++0 >
)++> ?
;++? @
},, 
_carDal-- 
.-- 
Add-- 
(-- 
car-- 
)-- 
;-- 
return.. 
new.. 
SuccessResult.. $
(..$ %
Messages..% -
...- .
CarAdded... 6
)..6 7
;..7 8
}// 	
public11 
IResult11 
Update11 
(11 
Car11 !
car11" %
)11% &
{22 	
_carDal33 
.33 
Update33 
(33 
car33 
)33 
;33  
return44 
new44 
SuccessResult44 $
(44$ %
Messages44& .
.44. /

CarUpdated44/ 9
)449 :
;44: ;
}55 	
public77 
IResult77 
Delete77 
(77 
Car77 !
car77" %
)77% &
{88 	
_carDal99 
.99 
Delete99 
(99 
car99 
)99 
;99  
return:: 
new:: 
SuccessResult:: $
(::$ %
Messages::% -
.::- .

CarDeleted::. 8
)::8 9
;::9 :
};; 	
public== 
IDataResult== 
<== 
List== 
<==  
Car==  #
>==# $
>==$ %
GetAll==& ,
(==, -
)==- .
{>> 	
return?? 
new?? 
SuccessDataResult?? (
<??( )
List??) -
<??- .
Car??. 1
>??1 2
>??2 3
(??3 4
_carDal??4 ;
.??; <
GetAll??< B
(??B C
)??C D
,??D E
Messages??F N
.??N O

CarsListed??O Y
)??Y Z
;??Z [
}@@ 	
publicBB 
IDataResultBB 
<BB 
ListBB 
<BB  
CarBB  #
>BB# $
>BB$ %
GetByDailyPriceBB& 5
(BB5 6
decimalBB6 =
minBB> A
,BBA B
decimalBBC J
maxBBK N
)BBN O
{CC 	
returnDD 
newDD 
SuccessDataResultDD (
<DD( )
ListDD) -
<DD- .
CarDD. 1
>DD1 2
>DD2 3
(DD3 4
_carDalDD4 ;
.DD; <
GetAllDD< B
(DDB C
cDDC D
=>DDE G
cDDH I
.DDI J

DailyPriceDDJ T
>=DDU W
minDDX [
&&DD\ ^
cDD_ `
.DD` a

DailyPriceDDa k
<=DDl n
maxDDo r
)DDr s
,DDs t
MessagesDDu }
.DD} ~
	CarListed	DD~ ‡
)
DD‡ ˆ
;
DDˆ ‰
}EE 	
publicGG 
IDataResultGG 
<GG 
ListGG 
<GG  
CarGG  #
>GG# $
>GG$ %
GetCarsByBrandIdGG& 6
(GG6 7
intGG7 :
idGG; =
)GG= >
{HH 	
returnII 
newII 
SuccessDataResultII (
<II( )
ListII) -
<II- .
CarII. 1
>II1 2
>II2 3
(II3 4
_carDalII4 ;
.II; <
GetAllII< B
(IIB C
cIIC D
=>IIE G
cIIH I
.III J
BrandIdIIJ Q
==IIR T
idIIU W
)IIW X
,IIX Y
MessagesIIZ b
.IIb c
CarListedByBrandIIc s
)IIt u
;IIu v
}JJ 	
publicLL 
IDataResultLL 
<LL 
ListLL 
<LL  
CarLL  #
>LL# $
>LL$ %
GetCarsByColorIdLL& 6
(LL6 7
intLL7 :
idLL; =
)LL= >
{MM 	
returnNN 
newNN 
SuccessDataResultNN (
<NN( )
ListNN) -
<NN- .
CarNN. 1
>NN1 2
>NN2 3
(NN3 4
_carDalNN4 ;
.NN; <
GetAllNN< B
(NNB C
cNNC D
=>NNE G
cNNH I
.NNI J
ColorIdNNJ Q
==NNR T
idNNU W
)NNW X
,NNX Y
MessagesNNZ b
.NNb c
CarListedByColorNNc s
)NNs t
;NNt u
}OO 	
}PP 
}QQ ø

ZC:\Users\User\Documents\MyCSharpProjects\ReCapProject\Business\Concrete\CustomerManager.cs
	namespace 	
Business
 
. 
Concrete 
{ 
public 

class 
CustomerManager  
:! "
ICustomerService# 3
{ 
private 
ICustomerDal 
_customerDal )
;) *
public 
CustomerManager 
( 
ICustomerDal +
customerDal, 7
)7 8
{ 	
_customerDal 
= 
customerDal &
;& '
} 	
public 
IResult 
Add 
( 
Customer #
customer$ ,
), -
{ 	
if 
( 
customer 
. 
UserId 
<=  "
$num# $
)$ %
{ 
return 
new 
ErrorResult &
(& '
)' (
;( )
} 
_customerDal 
. 
Add 
( 
customer %
)% &
;& '
return 
new 
SuccessResult $
($ %
Messages% -
.- .
	UserAdded. 7
)7 8
;8 9
} 	
}   
}!! ÿ'
XC:\Users\User\Documents\MyCSharpProjects\ReCapProject\Business\Concrete\RentalManager.cs
	namespace 	
Business
 
. 
Concrete 
{ 
public 

class 
RentalManager 
:  
IRentalService! /
{ 
private 

IRentalDal 

_rentalDal %
;% &
public 
RentalManager 
( 

IRentalDal '
	rentalDal( 1
)1 2
{ 	

_rentalDal 
= 
	rentalDal "
;" #
} 	
public 
IResult 
IsCarReturned $
($ %
int% (
carId) .
). /
{ 	
if 
( 

_rentalDal 
. 
GetAll !
(! "
r" #
=>$ &
(' (
r( )
.) *
CarId* /
==0 2
carId3 8
)8 9
&&: <
(= >
r> ?
.? @

ReturnDate@ J
==K M
nullN R
)R S
)S T
.T U
AnyU X
(X Y
)Y Z
)Z [
{ 
return 
new 
ErrorResult &
(& '
)' (
;( )
} 
return 
new 
SuccessResult $
($ %
)% &
;& '
} 	
public!! 
IResult!! 
Add!! 
(!! 
Rental!! !
rental!!" (
)!!( )
{"" 	
var$$ 
activeRentals$$ 
=$$ 

_rentalDal$$  *
.$$* +
GetAll$$+ 1
($$1 2
x$$2 3
=>$$4 6
x$$7 8
.$$8 9

ReturnDate$$9 C
==$$D F
null$$G K
)$$K L
.$$L M
Select$$M S
($$S T
x$$T U
=>$$V X
x$$Y Z
.$$Z [
CarId$$[ `
)$$` a
;$$a b
if&& 
(&& 
activeRentals&& 
.&& 
Contains&& &
(&&& '
rental&&' -
.&&- .
CarId&&. 3
)&&3 4
)&&4 5
{'' 
return(( 
new(( 
ErrorResult(( &
(((& '
Messages((' /
.((/ 0
CarRentalFailed((0 ?
)((? @
;((@ A
})) 

_rentalDal** 
.** 
Add** 
(** 
rental** !
)**! "
;**" #
return++ 
new++ 
SuccessResult++ $
(++$ %
Messages++% -
.++- .
CarIsRented++. 9
)++9 :
;++: ;
}66 	
public88 
IDataResult88 
<88 
List88 
<88  
Rental88  &
>88& '
>88' (
GetAll88) /
(88/ 0
)880 1
{99 	
return:: 
new:: 
SuccessDataResult:: (
<::( )
List::) -
<::- .
Rental::. 4
>::4 5
>::5 6
(::6 7

_rentalDal::7 A
.::A B
GetAll::B H
(::H I
)::I J
)::J K
;::K L
};; 	
public== 
IResult== 
IsAvailableForRent== )
(==) *
int==* -
carId==. 3
)==3 4
{>> 	
if?? 
(?? 
IsCarEverRented?? 
(??  
carId??  %
)??% &
.??& '
Success??' .
)??. /
{@@ 
ifAA 
(AA 
IsCarReturnedAA !
(AA! "
carIdAA" '
)AA' (
.AA( )
SuccessAA) 0
)AA0 1
{BB 
returnCC 
newCC 
SuccessResultCC ,
(CC, -
MessagesCC- 5
.CC5 6
CarIsRentedCC6 A
)CCA B
;CCB C
}DD 
returnEE 
newEE 
ErrorResultEE &
(EE& '
MessagesEE' /
.EE/ 0
CarNotAvailableEE0 ?
)EE? @
;EE@ A
}FF 
returnGG 
newGG 
SuccessResultGG $
(GG$ %
MessagesGG% -
.GG- .
CarIsRentedGG. 9
)GG9 :
;GG: ;
}HH 	
publicJJ 
IResultJJ 
IsCarEverRentedJJ &
(JJ& '
intJJ' *
carIdJJ+ 0
)JJ0 1
{KK 	
ifLL 
(LL 

_rentalDalLL 
.LL 
GetAllLL !
(LL! "
rLL" #
=>LL$ &
rLL' (
.LL( )
CarIdLL) .
==LL/ 1
carIdLL2 7
)LL7 8
.LL8 9
AnyLL9 <
(LL< =
)LL= >
)LL> ?
{MM 
returnNN 
newNN 
SuccessResultNN (
(NN( )
)NN) *
;NN* +
}OO 
returnPP 
newPP 
ErrorResultPP "
(PP" #
)PP# $
;PP$ %
}QQ 	
}RR 
}SS ¢
VC:\Users\User\Documents\MyCSharpProjects\ReCapProject\Business\Concrete\UserManager.cs
	namespace 	
Business
 
. 
Concrete 
{ 
public 

class 
UserManager 
: 
IUserService +
{ 
private 
IUserDal 
_userDal !
;! "
public 
UserManager 
( 
IUserDal #
userDal$ +
)+ ,
{ 	
_userDal 
= 
userDal 
; 
} 	
public 
IResult 
Add 
( 
User 
user  $
)$ %
{ 	
_userDal 
. 
Add 
( 
user 
) 
; 
return 
new 
SuccessResult $
($ %
Messages% -
.- .
	UserAdded. 7
)7 8
;8 9
} 	
public 
IResult 
Delete 
( 
User "
user# '
)' (
{ 	
throw   
new   #
NotImplementedException   -
(  - .
)  . /
;  / 0
}!! 	
public## 
IDataResult## 
<## 
List## 
<##  
User##  $
>##$ %
>##% &
GetAll##' -
(##- .
)##. /
{$$ 	
return%% 
new%% 
SuccessDataResult%% (
<%%( )
List%%) -
<%%- .
User%%. 2
>%%2 3
>%%3 4
(%%4 5
Messages%%5 =
.%%= >
UsersListed%%> I
)%%I J
;%%J K
}&& 	
public(( 
IDataResult(( 
<(( 
User(( 
>((  
GetById((! (
(((( )
int(() ,
id((- /
)((/ 0
{)) 	
return** 
new** 
SuccessDataResult** (
<**( )
User**) -
>**- .
(**. /
Messages**/ 7
.**7 8

UserListed**8 B
)**B C
;**C D
}++ 	
public-- 
IResult-- 
Update-- 
(-- 
User-- "
user--# '
)--' (
{.. 	
return// 
new// 
SuccessResult// $
(//$ %
Messages//% -
.//- .
UserUpdated//. 9
)//9 :
;//: ;
}00 	
}11 
}22 ‡!
TC:\Users\User\Documents\MyCSharpProjects\ReCapProject\Business\Constants\Messages.cs
	namespace 	
Business
 
. 
	Constants 
{ 
public		 

static		 
class		 
Messages		  
{

 
public 
static 
string 
CarAdded %
=& '
$str( 7
;7 8
public 
static 
string 

CarDeleted '
=( )
$str* 9
;9 :
public 
static 
string 

CarUpdated '
=( )
$str* =
;= >
public 
static 
string 

CarsListed '
=( )
$str* ?
;? @
public 
static 
string 
	CarListed &
=' (
$str) ;
;; <
public 
static 
string 
CarListedByBrand -
=. /
$str0 P
;P Q
public 
static 
string 
CarListedByColor -
=. /
$str0 N
;N O
public 
static 
string 
CarDetailsListed -
=. /
$str0 L
;L M
public 
static 
string 
CarNameInvalid +
=, -
$str. B
;B C
public 
static 
string 
DailyPriceInvalid .
=/ 0
$str1 H
;H I
public 
static 
string 
	UserAdded &
=' (
$str) <
;< =
public 
static 
string 
UserUpdated (
=) *
$str+ B
;B C
public 
static 
string 
UserDeleted (
=) *
$str+ >
;> ?
public   
static   
string   

UserListed   '
=  ( )
$str  * @
;  @ A
public!! 
static!! 
string!! 
UsersListed!! (
=!!) *
$str!!+ D
;!!D E
public$$ 
static$$ 
string$$ 
UserAddFailed$$ *
=$$+ ,
$str$$- I
;$$I J
public%% 
static%% 
string%% 
UserUpdateFailed%% -
=%%. /
$str%%0 L
;%%L M
public&& 
static&& 
string&& 
UserDeleteFailed&& -
=&&. /
$str&&0 L
;&&L M
public'' 
static'' 
string'' 
UserListingFailed'' .
=''/ 0
$str''1 P
;''P Q
public(( 
static(( 
string(( 
FailedToListUsers(( .
=((/ 0
$str((1 T
;((T U
public,, 
static,, 
string,, 
CustomerAdded,, *
=,,+ ,
$str,,- >
;,,> ?
public-- 
static-- 
string-- 
CustomersListed-- ,
=--- .
$str--/ F
;--F G
public.. 
static.. 
string.. 
CustomerUpdate.. +
=.., -
$str... C
;..C D
public// 
static// 
string// 
CustomerDeleted// ,
=//- .
$str/// @
;//@ A
public22 
static22 
string22 
CustomerNameInvalid22 0
=221 2
$str223 J
;22J K
public88 
static88 
string88 
CarIsRented88 (
=88( )
$str88* ;
;88; <
public;; 
static;; 
string;; 
CarRentalFailed;; ,
=;;, -
$str;;. K
;;;K L
public<< 
static<< 
string<< 
CarNotAvailable<< ,
=<<- .
$str<</ E
;<<E F
public@@ 
static@@ 
string@@ 
MaintenanceTime@@ ,
=@@- .
$str@@/ ?
;@@? @
}BB 
}CC 