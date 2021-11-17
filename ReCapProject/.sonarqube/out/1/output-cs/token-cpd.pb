�
PC:\Users\User\Documents\MyCSharpProjects\ReCapProject\Entities\Concrete\Brand.cs
	namespace 	
Entities
 
. 
Concrete 
{		 
public

 

class

 
Brand

 
:

 
IEntity

 
{ 
public 
int 
BrandId 
{ 
get  
;  !
set" %
;% &
}' (
public
string
	BrandName
{
get
;
set
;
}
} 
} �

NC:\Users\User\Documents\MyCSharpProjects\ReCapProject\Entities\Concrete\Car.cs
	namespace 	
Entities
 
. 
Concrete 
{		 
public

 

class

 
Car

 
:

 
IEntity

 
{ 
public 
int 
CarId 
{ 
get 
; 
set  #
;# $
}% &
public
int
BrandId
{
get
;
set
;
}
public 
int 
ColorId 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
CarName 
{ 
get  #
;# $
set% (
;( )
}* +
public 
short 
	ModelYear 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
decimal 

DailyPrice !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} �
PC:\Users\User\Documents\MyCSharpProjects\ReCapProject\Entities\Concrete\Color.cs
	namespace 	
Entities
 
. 
Concrete 
{ 
public		 

class		 
Color		 
:		 
IEntity		  
{

 
public 
int 
ColorId 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
	ColorName 
{  !
get" %
;% &
set' *
;* +
}, -
}
} �
SC:\Users\User\Documents\MyCSharpProjects\ReCapProject\Entities\Concrete\Customer.cs
	namespace 	
Entities
 
. 
Concrete 
{		 
public

 

class

 
Customer

 
:

 
IEntity

 #
{ 
public 
int 

CustomerId 
{ 
get  #
;# $
set% (
;( )
}* +
public
int
UserId
{
get
;
set
;
}
public 
string 
CompanyName !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} �
QC:\Users\User\Documents\MyCSharpProjects\ReCapProject\Entities\Concrete\Rental.cs
	namespace 	
Entities
 
. 
Concrete 
{		 
public

 

class

 
Rental

 
:

 
IEntity

 !
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public
int
CarId
{
get
;
set
;
}
public 
int 

CustomerId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
DateTime 
RentDate  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
DateTime 

ReturnDate "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} �
OC:\Users\User\Documents\MyCSharpProjects\ReCapProject\Entities\Concrete\User.cs
	namespace 	
Entities
 
. 
Concrete 
{		 
public

 

class

 
User

 
:

 
IEntity

 
{ 
public 
int 
UserId 
{ 
get 
;  
set! $
;$ %
}& '
public
string
	FirstName
{
get
;
set
;
}
public 
string 
LastName 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} �
TC:\Users\User\Documents\MyCSharpProjects\ReCapProject\Entities\DTOs\CarDetailsDto.cs
	namespace		 	
Entities		
 
.		 
DTOs		 
{

 
public 

class 

:  
IDto! %
{ 
public
string
CarName
{
get
;
set
;
}
public 
string 
	BrandName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
	ColorName 
{  !
get" %
;% &
set' *
;* +
}, -
public 
decimal 

DailyPrice !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} 