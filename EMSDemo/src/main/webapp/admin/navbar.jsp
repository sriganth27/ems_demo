<style>
  @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
.nav-item{
 padding: .1rem 1rem;
 font-size: 20px;
 font-weight: 500;
 }
 .navbar-brand{
 font-size: 20px;
 font-weight: 500;
 }
 
 .navbar {
 position: sticky;
 top: 0;
 left: 0;
 z-index: 100;
 padding: .5rem 5rem;
 box-shadow: 5px 5px 20px rgba(0, 0,0, .5);
background :black;

}
.navbar .navbar-brand
{
    font-size: 25px;
    font-weight: 800;
    color:  #29f700;
}
#navbarSupportedContent a{
    color: #fff;
    border-bottom: 2px solid transparent;
}
#navbarSupportedContent a:hover{
 
 border-bottom: 2px solid #29f700;
}
#navbarSupportedContent button{
    background: #29f700;
}
   .dropdown-item{
   color:red;
   background: #29f700;
   }
 .bg3{
 background-color:teal;
 }
</style>

<nav class="navbar navbar-expand-lg navbar-light bg3 ">
  <div class="container-fluid">
     <a class="navbar-brand" href="index.jsp"> <img src="../image/DMI.png" style="width: 60px; height: 60px;">EMS</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
       
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="addDept.jsp">Add Department</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">View Department</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Add Event</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href=" view_event.jsp">View Event</a>
        </li>
         <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Search Event
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <li><a class="dropdown-item" href="#">Department Wise</a></li>
            <li><a class="dropdown-item" href="#">Date Wise</a></li>
            <li><a class="dropdown-item" href="#">Something Else Here</a></li>
          </ul>
        </li>
        </ul>
        <form>
      <div class="dropdown">
  		<button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton1" 
  		data-bs-toggle="dropdown" aria-expanded="false">
    		Admin
 		 </button>
  
         <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
        <li><a class="dropdown-item" href="../adminLogout">Logout</a></li>
        
  </ul>
    </div>
    </form>
       </div>
     </div>
</nav>