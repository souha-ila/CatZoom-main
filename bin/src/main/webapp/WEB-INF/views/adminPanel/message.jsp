<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.example.demo.entity.Message" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="<%= request.getContextPath()%>/resources/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="<%= request.getContextPath()%>/resources/assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    CatZoom Dashboard 
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />

  <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,600,700,800" rel="stylesheet" />
  <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
 
  
  <link href="<%= request.getContextPath() %>/resources/assets/css/nucleo-icons.css" rel="stylesheet" />
  <!-- CSS Files -->
  <link href="<%= request.getContextPath() %>/resources/assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="<%= request.getContextPath()%>/resources/assets/css/black-dashboard.css?v=1.0.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="<%= request.getContextPath()%>/resources/assets/demo/demo.css" rel="stylesheet" />
</head>

<body class=" ">
  <div class="wrapper ">
    <div class="sidebar">
   
      <div class="sidebar-wrapper">
        <div class="logo">
          <a  class="simple-text logo-mini">
            Admin
          </a>
          <a  class="simple-text logo-normal">
          Panel
          </a>
        </div>
        <ul class="nav">
          <li class="active ">
            <a href="/admin/home">
              <i class="tim-icons icon-chart-pie-36"></i>
              <p>Dashboard</p>
            </a>
          </li>
          <li>
            <a href="cat">
                 <i class="fas fa-paw"></i>
              <p>Cats</p>
            </a>
          </li>
          <li>
            <a href="request">
              <i class="tim-icons icon-pin"></i>
              <p>requests</p>
            </a>
          </li>
            <li>
            <a href="blog">
              <i class="tim-icons icon-align-center"></i>
              <p>Blogs</p>
            </a>
          </li>
          <li>
            <a href="user">
              <i class="tim-icons icon-single-02"></i>
              <p>users</p>
            </a>
          </li>
          <li>
            <li>
            <a href="message">
              <i class="tim-icons icon-bell-55"></i>
              <p>Messages</p>
            </a>
          </li>
        
      
      
        </ul>
      </div>
    </div>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-absolute navbar-transparent   ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <div class="navbar-toggle d-inline">
              <button type="button" class="navbar-toggler">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </button>
            </div>
            <a class="navbar-brand" href="#pablo">Dashboard</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          <div class="collapse navbar-collapse" id="navigation">
            <ul class="navbar-nav ml-auto ">
              <div class="search-bar input-group">
           
                <button class="btn btn-link" id="search-button" data-toggle="modal" data-target="#searchModal"><i class="tim-icons icon-zoom-split"></i></button>
               
              </div>
  
         
              <li class="dropdown nav-item">
                <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                  <div class="photo">
                    <img src="<%= request.getContextPath()%>/resources/assets/img/me.png">
                  </div>
                  <b class="caret d-none d-lg-block d-xl-block"></b>
                  <p class="d-lg-none">
                    Log out
                  </p>
                </a>
                <ul class="dropdown-menu dropdown-navbar">
                
                  <div class="dropdown-divider"></div>
                  <li class="nav-link">
                    <a href="/logout" class="nav-item dropdown-item">Log out</a>
                  </li>
                </ul>
              </li>
              <li class="separator d-lg-none"></li>
            </ul>
          </div>
        </div>
      </nav>
      <div class="modal fade" id="searchModal" tabindex="-1" role="dialog" aria-labelledby="searchModal" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="SEARCH">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <i class="tim-icons icon-simple-remove"></i>
              </button>
            </div>
            <div class="modal-footer">
            </div>
          </div>
        </div>
      </div>
      <!-- End Navbar -->
      <div class="content">
          <div class="col-12">
            <div class="card card-chart">
              <div class="card-header ">
                  <div class="col-sm-6 text-left">
                 
  
        
          
              
        <!-------------------- Message List Section ------------------->
    
        <div class="card-header">
            <h5 class="card-category">Message List</h5>
        </div>
        <div class="card-body">
          
            <table class="table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>email</th>
                        <th>Content</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                <tbody>
                            <% List<Message> messages = (List<Message>) request.getAttribute("messages");
                            for (Message message : messages) { %>
                                <tr>
                                    <th scope="row"><%= message.getId() %></th>
                                      <td><%= message.getContent() %></td>
                                    <td><%= message.getEmail() %></td>
                                    <td><%= message.getName() %></td>
                      
                                    <td> 
                        
                        <a href="deletemessage/<%= message.getId() %>" onclick="return confirmDelete();">
    <img src="${pageContext.request.contextPath}/resources/images/delete.gif" alt="logo" width="30" height="30" class="img-fluid">
</a>

                                </tr>
                            <% } %>
                        </tbody>
            </table>
        </div>
    </div>

        </div>
        </div>
        </div>
        </div>
        </div>
        </div>
        
       
      <footer class="footer">
        <div class="container-fluid">
          <nav>
          
          </nav>
          <div class="copyright float-right">
            ©
            <script>
              document.write(new Date().getFullYear())
            </script> made with <i class="tim-icons icon-heart-2"></i> 
          </div>
      </footer>
      </div>
    </div>
    <div class="fixed-plugin">
      <div class="dropdown show-dropdown">
        <a href="#" data-toggle="dropdown">
          <i class="fa fa-cog fa-2x"> </i>
        </a>
        <ul class="dropdown-menu">
          <li class="header-title"> Sidebar Background</li>
          <li class="adjustments-line">
            <a href="javascript:void(0)" class="switch-trigger background-color">
              <div class="badge-colors text-center">
                <span class="badge filter badge-primary active" data-color="primary"></span>
                <span class="badge filter badge-blue" data-color="blue"></span>
                <span class="badge filter badge-green" data-color="green"></span>
              </div>
              <div class="clearfix"></div>
            </a>
          </li>
          <li class="adjustments-line text-center color-change">
            <span class="color-label">LIGHT MODE</span>
            <span class="badge light-badge mr-2"></span>
            <span class="badge dark-badge ml-2"></span>
            <span class="color-label">DARK MODE</span>
          </li>
         
    </div>
    <!--   Core JS Files   -->
  
    <script src="<%= request.getContextPath()%>/resources/assets/js/core/jquery.min.js"></script>
    <script src="<%= request.getContextPath()%>/resources/assets/js/core/popper.min.js"></script>
    <script src="<%= request.getContextPath()%>/resources/assets/js/core/bootstrap.min.js"></script>
    <script src="<%= request.getContextPath()%>/resources/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
    <!--  Google Maps Plugin    -->
    <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
    <!-- Chart JS -->
    
    <script src="<%= request.getContextPath()%>/resources/assets/js/plugins/chartjs.min.js"></script>
    <!--  Notifications Plugin    -->
    <script src="<%= request.getContextPath()%>/resources/assets/js/plugins/bootstrap-notify.js"></script>
    <!-- Control Center for Black Dashboard: parallax effects, scripts for the example pages etc -->
    <script src="<%= request.getContextPath()%>/resources/assets/js/black-dashboard.min.js?v=1.0.0" type="text/javascript"></script>
    <!-- Black Dashboard DEMO methods, don't include it in your project! -->
    <script src="<%= request.getContextPath()%>/resources/assets/demo/demo.js"></script>
    <script>
      $(document).ready(function() {
        $().ready(function() {
          $sidebar = $('.sidebar');
          $navbar = $('.navbar');

          $full_page = $('.full-page');

          $sidebar_responsive = $('body > .navbar-collapse');
          sidebar_mini_active = true;
          white_color = false;

          window_width = $(window).width();

          fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();



          $('.fixed-plugin a').click(function(event) {
            // Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
            if ($(this).hasClass('switch-trigger')) {
              if (event.stopPropagation) {
                event.stopPropagation();
              } else if (window.event) {
                window.event.cancelBubble = true;
              }
            }
          });

          $('.fixed-plugin .background-color span').click(function() {
            $(this).siblings().removeClass('active');
            $(this).addClass('active');

            var new_color = $(this).data('color');

            if ($sidebar.length != 0) {
              $sidebar.attr('data-color', new_color);
            }

            if ($navbar.length != 0) {
              $navbar.attr('data-color', new_color);
            }

            if ($full_page.length != 0) {
              $full_page.attr('filter-color', new_color);
            }

            if ($sidebar_responsive.length != 0) {
              $sidebar_responsive.attr('data-color', new_color);
            }
          });

          $('.switch-sidebar-mini input').on("switchChange.bootstrapSwitch", function() {
            var $btn = $(this);

            if (sidebar_mini_active == true) {
              $('body').removeClass('sidebar-mini');
              sidebar_mini_active = false;
              blackDashboard.showSidebarMessage('Sidebar mini deactivated...');
            } else {
              $('body').addClass('sidebar-mini');
              sidebar_mini_active = true;
              blackDashboard.showSidebarMessage('Sidebar mini activated...');
            }

            // we simulate the window Resize so the charts will get updated in realtime.
            var simulateWindowResize = setInterval(function() {
              window.dispatchEvent(new Event('resize'));
            }, 180);

            // we stop the simulation of Window Resize after the animations are completed
            setTimeout(function() {
              clearInterval(simulateWindowResize);
            }, 1000);
          });

          $('.switch-change-color input').on("switchChange.bootstrapSwitch", function() {
            var $btn = $(this);

            if (white_color == true) {

              $('body').addClass('change-background');
              setTimeout(function() {
                $('body').removeClass('change-background');
                $('body').removeClass('white-content');
              }, 900);
              white_color = false;
            } else {

              $('body').addClass('change-background');
              setTimeout(function() {
                $('body').removeClass('change-background');
                $('body').addClass('white-content');
              }, 900);

              white_color = true;
            }


          });

          $('.light-badge').click(function() {
            $('body').addClass('white-content');
          });

          $('.dark-badge').click(function() {
            $('body').removeClass('white-content');
          });
        });
      });
    </script>
    <script>
      $(document).ready(function() {
        // Javascript method's body can be found in assets/js/demos.js
        demo.initDashboardPageCharts();

      });
    </script>
    
    <script>
  function confirmDelete() {
    var result = confirm("Êtes-vous sûr de vouloir supprimer cet élément?");
    return result;
  }
</script>

</body>

</html>
