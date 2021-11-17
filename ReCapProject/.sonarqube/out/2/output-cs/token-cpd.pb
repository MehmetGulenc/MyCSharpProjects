É
VC:\Users\User\Documents\MyCSharpProjects\ReCapProject\DataAccess\Abstract\IBrandDal.cs
	namespace		 	

DataAccess		
 
.		 
Abstract		 
{

 
public 

	interface 
	IBrandDal 
:  
IEntityRepository! 2
<2 3
Brand3 8
>8 9
{ 
} 
} ê
TC:\Users\User\Documents\MyCSharpProjects\ReCapProject\DataAccess\Abstract\ICarDal.cs
	namespace

 	

DataAccess


 
.

 
Abstract

 
{ 
public 

	interface 
ICarDal 
: 
IEntityRepository 0
<0 1
Car1 4
>4 5
{ 
List 
< 
CarDetailsDto 
> 
GetCarDetails )
() *
)* +
;+ ,
} 
} É
VC:\Users\User\Documents\MyCSharpProjects\ReCapProject\DataAccess\Abstract\IColorDal.cs
	namespace		 	

DataAccess		
 
.		 
Abstract		 
{

 
public 

	interface 
	IColorDal 
:  
IEntityRepository! 2
<2 3
Color3 8
>8 9
{ 
} 
} å
YC:\Users\User\Documents\MyCSharpProjects\ReCapProject\DataAccess\Abstract\ICustomerDal.cs
	namespace		 	

DataAccess		
 
.		 
Abstract		 
{

 
public 

	interface 
ICustomerDal !
:" #
IEntityRepository$ 5
<5 6
Customer6 >
>> ?
{ 
} 
} Ü
WC:\Users\User\Documents\MyCSharpProjects\ReCapProject\DataAccess\Abstract\IRentalDal.cs
	namespace		 	

DataAccess		
 
.		 
Abstract		 
{

 
public 

	interface 

IRentalDal 
:  !
IEntityRepository" 3
<3 4
Rental4 :
>: ;
{ 
} 
} Ä
UC:\Users\User\Documents\MyCSharpProjects\ReCapProject\DataAccess\Abstract\IUserDal.cs
	namespace		 	

DataAccess		
 
.		 
Abstract		 
{

 
public 

	interface 
IUserDal 
: 
IEntityRepository 0
<0 1
User1 5
>5 6
{ 
} 
} î
gC:\Users\User\Documents\MyCSharpProjects\ReCapProject\DataAccess\Concrete\EntityFramework\efBrandDal.cs
	namespace

 	

DataAccess


 
.

 
Concrete

 
.

 
EntityFramework

 -
{ 
public 

class 

efBrandDal 
: "
EfEntityRepositoryBase 4
<4 5
Brand5 :
,: ;
RentACarContext< K
>K L
,L M
	IBrandDalN W
{ 
} 
} û
eC:\Users\User\Documents\MyCSharpProjects\ReCapProject\DataAccess\Concrete\EntityFramework\efCarDal.cs
	namespace 	

DataAccess
 
. 
Concrete 
. 
EntityFramework -
{ 
public 

class 
efCarDal 
: "
EfEntityRepositoryBase 2
<2 3
Car3 6
,6 7
RentACarContext8 G
>G H
,H I
ICarDalI P
{ 
public 
List 
< 
CarDetailsDto !
>! "
GetCarDetails# 0
(0 1
)1 2
{ 	
using 
( 
RentACarContext "
context# *
=+ ,
new- 0
RentACarContext1 @
(@ A
)A B
)B C
{ 
var 
result 
= 
from !
c" #
in$ &
context' .
.. /
Cars/ 3
join 
b 
in 
context %
.% &
Brands& ,
on- /
c0 1
.1 2
BrandId2 9
equals: @
bA B
.B C
BrandIdC J
join 
co 
in 
context &
.& '
Colors' -
on. 0
c1 2
.2 3
ColorId3 :
equals; A
coB D
.D E
ColorIdE L
select 
new 
CarDetailsDto ,
{ 
CarName 
=  !
c" #
.# $
CarName$ +
,+ ,
	BrandName !
=" #
b$ %
.% &
	BrandName& /
,/ 0
	ColorName !
=" #
co$ &
.& '
	ColorName' 0
,0 1

DailyPrice "
=# $
c% &
.& '

DailyPrice' 1
} 
; 
return 
result 
. 
ToList $
($ %
)% &
;& '
}   
}!! 	
}"" 
}## î
gC:\Users\User\Documents\MyCSharpProjects\ReCapProject\DataAccess\Concrete\EntityFramework\efColorDal.cs
	namespace 	

DataAccess
 
. 
Concrete 
. 
EntityFramework -
{ 
public 

class 

efColorDal 
: "
EfEntityRepositoryBase 4
<4 5
Color5 :
,: ;
RentACarContext< K
>K L
,L M
	IColorDalN W
{ 
} 
} †
jC:\Users\User\Documents\MyCSharpProjects\ReCapProject\DataAccess\Concrete\EntityFramework\efCustomerDal.cs
	namespace

 	

DataAccess


 
.

 
Concrete

 
.

 
EntityFramework

 -
{ 
public 

class 
efCustomerDal 
:  "
EfEntityRepositoryBase! 7
<7 8
Customer8 @
,@ A
RentACarContextB Q
>Q R
,R S
ICustomerDalT `
{ 
} 
} ò
hC:\Users\User\Documents\MyCSharpProjects\ReCapProject\DataAccess\Concrete\EntityFramework\efRentalDal.cs
	namespace

 	

DataAccess


 
.

 
Concrete

 
.

 
EntityFramework

 -
{ 
public 

class 
efRentalDal 
: "
EfEntityRepositoryBase 5
<5 6
Rental6 <
,< =
RentACarContext> M
>M N
,N O

IRentalDalP Z
{ 
} 
} ê
fC:\Users\User\Documents\MyCSharpProjects\ReCapProject\DataAccess\Concrete\EntityFramework\efUserDal.cs
	namespace

 	

DataAccess


 
.

 
Concrete

 
.

 
EntityFramework

 -
{ 
public 

class 
	efUserDal 
: "
EfEntityRepositoryBase 3
<3 4
User4 8
,8 9
RentACarContext: I
>I J
,J K
IUserDalL T
{ 
} 
} ß
lC:\Users\User\Documents\MyCSharpProjects\ReCapProject\DataAccess\Concrete\EntityFramework\RentACarContext.cs
	namespace		 	

DataAccess		
 
.		 
Concrete		 
.		 
EntityFramework		 -
{

 
public 

class 
RentACarContext  
:! "
	DbContext# ,
{ 
	protected 
override 
void 
OnConfiguring  -
(- .#
DbContextOptionsBuilder. E
optionsBuilderF T
)T U
{ 	
optionsBuilder 
. 
UseSqlServer '
(' (
$str( t
)t u
;u v
} 	
public 
DbSet 
< 
Car 
> 
Cars 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
DbSet 
< 
Brand 
> 
Brands "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
DbSet 
< 
Color 
> 
Colors "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
DbSet 
< 
User 
> 
Users  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
DbSet 
< 
Customer 
> 
	Customers (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
DbSet 
< 
Rental 
> 
Rentals $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} á0
dC:\Users\User\Documents\MyCSharpProjects\ReCapProject\DataAccess\Concrete\InMemory\InMemoryCarDal.cs
	namespace 	

DataAccess
 
. 
Concrete 
. 
InMemory &
{ 
public 

class 
InMemoryCarDal 
:  !
ICarDal" )
{ 
List 
< 
Car 
> 
_cars 
; 
public 
InMemoryCarDal 
( 
) 
{ 	
_cars 
= 
new 
List 
< 
Car  
>  !
{ 
new 
Car 
{ 
CarId 
= 
$num  !
,! "
BrandId# *
=+ ,
$num- .
,. /
ColorId0 7
=8 9
$num: ;
,; <
	ModelYear= F
=G H
$numI M
,M N

DailyPriceO Y
=Z [
$num\ _
,_ `
Descriptiona l
=m n
$stro u
}u v
,v w
new 
Car 
{ 
CarId 
= 
$num  !
,! "
BrandId# *
=+ ,
$num- .
,. /
ColorId0 7
=8 9
$num: ;
,; <
	ModelYear= F
=G H
$numI M
,M N

DailyPriceO Y
=Z [
$num\ _
,_ `
Descriptiona l
=m n
$stro u
}u v
,v w
new 
Car 
{ 
CarId 
= 
$num  !
,! "
BrandId# *
=+ ,
$num- .
,. /
ColorId0 7
=8 9
$num: ;
,; <
	ModelYear= F
=G H
$numI M
,M N

DailyPriceO Y
=Z [
$num\ _
,_ `
Descriptiona l
=m n
$stro u
}u v
} 
; 
} 	
public 
List 
< 
Car 
> 
GetAll 
(  

Expression  *
<* +
Func+ /
</ 0
Car0 3
,3 4
bool5 9
>9 :
>: ;
filter< B
=C D
nullE I
)I J
{ 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
public 
Car 
Get 
( 

Expression !
<! "
Func" &
<& '
Car' *
,* +
bool, 0
>0 1
>1 2
filter3 9
)9 :
{   	
throw!! 
new!! #
NotImplementedException!! -
(!!- .
)!!. /
;!!/ 0
}"" 	
public$$ 
void$$ 
Add$$ 
($$ 
Car$$ 
car$$ 
)$$  
{%% 	
_cars&& 
.&& 
Add&& 
(&& 
car&& 
)&& 
;&& 
}'' 	
public)) 
void)) 
Delete)) 
()) 
Car)) 
car)) "
)))" #
{** 	
var++ 
carToDelete++ 
=++ 
_cars++ #
.++# $
SingleOrDefault++$ 3
(++3 4
c++4 5
=>++6 8
c++9 :
.++: ;
CarId++; @
==++A C
car++D G
.++G H
CarId++H M
)++M N
;++N O
_cars,, 
.,, 
Remove,, 
(,, 
carToDelete,, $
),,$ %
;,,% &
}.. 	
public00 
List00 
<00 
Car00 
>00 
GetAll00 
(00  
)00  !
{11 	
return22 
_cars22 
;22 
}33 	
public55 
List55 
<55 
Car55 
>55 
GetById55  
(55  !
int55! $
carId55% *
)55* +
{66 	
return77 
_cars77 
.77 
Where77 
(77 
c77  
=>77! #
c77$ %
.77% &
CarId77& +
==77, .
carId77/ 4
)774 5
.775 6
ToList776 <
(77< =
)77= >
;77> ?
}88 	
public:: 
void:: 
Update:: 
(:: 
Car:: 
car:: "
)::" #
{;; 	
var<< 
carToUpdate<< 
=<< 
_cars<< #
.<<# $
SingleOrDefault<<$ 3
(<<3 4
c<<4 5
=><<6 8
c<<9 :
.<<: ;
CarId<<; @
==<<A C
car<<D G
.<<G H
CarId<<H M
)<<M N
;<<N O
carToUpdate== 
.== 
BrandId== 
===  !
car==" %
.==% &
BrandId==& -
;==- .
carToUpdate>> 
.>> 
ColorId>> 
=>>  !
car>>" %
.>>% &
ColorId>>& -
;>>- .
carToUpdate?? 
.?? 
	ModelYear?? !
=??" #
car??$ '
.??' (
	ModelYear??( 1
;??1 2
carToUpdate@@ 
.@@ 

DailyPrice@@ "
=@@# $
car@@% (
.@@( )

DailyPrice@@) 3
;@@3 4
carToUpdateAA 
.AA 
DescriptionAA #
=AA$ %
carAA& )
.AA) *
DescriptionAA* 5
;AA5 6
}BB 	
publicDD 
ListDD 
<DD 
CarDetailsDtoDD !
>DD! "
GetCarDetailsDD# 0
(DD0 1
)DD1 2
{EE 	
throwFF 
newFF #
NotImplementedExceptionFF -
(FF- .
)FF. /
;FF/ 0
}GG 	
}HH 
}II 