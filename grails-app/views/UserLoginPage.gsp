<!DOCTYPE html>
<html lang="en">
   <head>
      <meta name="layout" content="mainlayout">
      <g:javascript src="/libs/jquery-1.7.2.min.js"></g:javascript>
      <g:javascript src="/libs/jquery.jqChart.min.js"></g:javascript>
      <g:javascript src="../js/navigation.js"></g:javascript>
      <g:javascript src="../js/highcharts.js"></g:javascript>
      <g:javascript src="../js/gray.js"></g:javascript>
      <g:javascript src="modal.js"></g:javascript>
   </head>
   <body>
      <g:hiddenField id="globalTabValue" name="globalTabValue" value="${globalTabVar}"></g:hiddenField>
      <div class="row-fluid">
         <div class="span2 col main-left menu-large">
            <div style="overflow: hidden;" class="rrow scroll-y-left">
               <div style="width: auto; transition-property: transform; transform-origin: 0px 0px 0px; transform: translate(0px, 0px) scale(1) translateZ(0px);" class="iScrollWrapper">
                  <ul class="tabbed-Pane" style="display: block;">
                     <li class="glyphicons home currentScroll active"><a href="#userTaskEntryTab" data-toggle="tab"
                        onclick="showPage('/timemanagement/UserTaskEntry/viewUserTasks','userTaskEntryTab');setTabValue('/timemanagement/UserTaskEntry/setTabVarValue');"><span>User
                        Task Entry</span><i class="icon-user"></i></a>
                     </li>
                     <li class="glyphicons coins"><a href="#clientTab" data-toggle="tab"
                        onclick="showPage('/timemanagement/Chart/viewtable','clientTab');setTabValue('/timemanagement/Chart/setTabVarValue');"><span>Dashboard</span><i
                        class="icon-tasks"></i></a></li>
                     <li class="glyphicons coins"><a href="#contactTab" data-toggle="tab"
                        onclick="showPage('/timemanagement/Contact/contactdetails','contactTab');setTabValue('/timemanagement/Contact/setTabVarValue');"><span>Contact</span><i
                        class="icon-briefcase"></i></a></li>
                  </ul>
               </div>
               <span style="display: inline;" class="navarrow hide">
               <span class="glyphicons circle_arrow_down"><i></i></span>
               </span>
               <div style="pointer-events: none; transition-property: opacity; overflow: hidden; opacity: 0;" class="iScrollLeftV">
                  <div style="pointer-events: none; transition-property: transform; transition-timing-function: cubic-bezier(0.33, 0.66, 0.66, 1); transform: translate(0px, 0px) translateZ(0px); height: 230px;"></div>
               </div>
            </div>
         </div>
         <div class="span9 tab-content">
            <div id="userTaskEntryTab" class="tab-pane"></div>
            <div id="clientTab" class="tab-pane"></div>
            <div id="contactTab" class="tab-pane"></div>
         </div>
      </div>
      <script language="javascript" type="text/javascript">
         selectTab();
      </script>
   </body>
</html>

