<%@ include file="/WEB-INF/jsp/include.jsp" %>
	<link rel="stylesheet" type="text/css" href="/tfcc_resources/css/menu.css" />
	<script type="text/javascript" src="/tfcc_resources/js/menu_sticky.js"></script>
	
<script type="text/javascript">

<!--

function popup(mylink, windowname)
{
	if (! window.focus)return true;
	var href;
	if (typeof(mylink) == 'string')
   		href=mylink;
	else
   		href=mylink.href;
	
	window.open(href, windowname, 'width=500,height=380,left=250,top=200,scrollbars=no');
	
	return false;
}
//-->
</script>	


<div class="menuBar" style="width:1000px; text-align:center;">  
	
	<a class="menuButton" 
	   href="" 
	   onclick="return buttonClick(event, 'invoices');"  
	   onmouseover="buttonMouseover(event, 'invoices');">Invoices
	</a>
	
	<a class="menuButton" 
	   href="" 
	   onclick="return buttonClick(event, 'orders');"  
	   onmouseover="buttonMouseover(event, 'orders');">Orders
	</a>
	
	<a class="menuButton" 
	   href="" 
	   onclick="return buttonClick(event, 'reports');"  
	   onmouseover="buttonMouseover(event, 'reports');">Reports
	</a>
	
	<a class="menuButton" 
	   href="" 
	   onclick="return buttonClick(event, 'itemMenu');"  
	   onmouseover="buttonMouseover(event, 'itemMenu');">Items
	</a>
	
	<c:choose>
		<c:when test="${adminUserId != null && adminUserName != null}">
			<a class="menuButton" 
			   href="" 
			   onclick="return buttonClick(event, 'companies');"  
			   onmouseover="buttonMouseover(event, 'companies');">Companies
			</a>	
		</c:when>
	</c:choose>	
	
	<a class="menuButton" 
	   href="" 
	   onclick="return buttonClick(event, 'branches');"  
	   onmouseover="buttonMouseover(event, 'branches');">Branches
	</a>
	
	<a class="menuButton" 
	   href="" 
	   onclick="return buttonClick(event, 'employees');"  
	   onmouseover="buttonMouseover(event, 'employees');">Employees
	</a>	
		
	
	<a class="menuButton" 
	   href="" 
	   onclick="return buttonClick(event, 'lineups');"  
	   onmouseover="buttonMouseover(event, 'lineups');">Lineups
	</a>
	
	<a class="menuButton" 
	   href="" 
	   onclick="return buttonClick(event, 'vendors');"  
	   onmouseover="buttonMouseover(event, 'vendors');">Vendors
	</a>
	
	<a class="menuButton" 
	   href="" 
	   onclick="return buttonClick(event, 'settings');"  
	   onmouseover="buttonMouseover(event, 'settings');">Settings
	</a>
	
	<a class="menuButton" 
	   href="" 
	   onclick="return buttonClick(event, 'customers');"  
	   onmouseover="buttonMouseover(event, 'customers');">Customers
	</a>
	
	<a class="menuButton" 
	   href="" 
	   onclick="return buttonClick(event, 'feedback');"  
	   onmouseover="buttonMouseover(event, 'feedback');">Feedback
	</a>	
	
	<a class="menuButton" 
	   href="" 
	   onclick="return buttonClick(event, 'logout');"  
	   onmouseover="buttonMouseover(event, 'logout');">Logout
	</a>				
		
</div>

<div id="companies" class="menu" onmouseover="menuMouseover(event)">  		  	

	<a class="menuItem" href="/central/listcompanies.html">
		List Companies
	</a>
	
	<div class="menuItemSep"></div>
	
	<a class="menuItem" href="/central/addcompany.html">
		Add Company
	</a>
	
</div> 

<div id="invoices" class="menu" onmouseover="menuMouseover(event)">  		  	

	<a class="menuItem" href="/central/searchinvoices.html">
		Search Invoices
	</a>
	
	<div class="menuItemSep"></div>
	
	<c:forEach items="${model.invoiceBranches}" var="invoiceBranch">	
	   <a class="menuItem" 
	       href=""
   		   onclick="return false;"
   		   onmouseover="menuItemMouseover(event, '<c:out value="${invoiceBranch.id}"/>_invoices');">
   		   <span class="menuItemText"><c:out value="${invoiceBranch.name}"/></span>
   		   <span class="menuItemArrow">&#9654;</span>
   	   </a>		
	</c:forEach>
	
	<div class="menuItemSep"></div>
	
	<a class="menuItem" href=""
  		   onclick="return false;"
  		   onmouseover="menuItemMouseover(event, 'all_web_invoices');">
  		   <span class="menuItemText">Web Invoices</span>
  		   <span class="menuItemArrow">&#9654;</span>
  	</a>		
	
	<div class="menuItemSep"></div>
	
	<a class="menuItem" href=""
  		   onclick="return false;"
  		   onmouseover="menuItemMouseover(event, 'all_branch_invoices');">
  		   <span class="menuItemText">All Branches</span>
  		   <span class="menuItemArrow">&#9654;</span>
  	</a>		
</div> 

<div id="all_branch_invoices" class="menu" onmouseover="menuMouseover(event)">
 
	<a class="menuItem" href=""
  		   onclick="return false;"
  		   onmouseover="menuItemMouseover(event, 'all_branch_sales');">
  		   <span class="menuItemText"><fmt:message key="viewstats.heading"/></span>
  		   <span class="menuItemArrow">&#9654;</span>
  	</a>
  	
	<a class="menuItem" href="/central/searchsales.html">
		Search Sales
	</a>
	  		
	<div class="menuItemSep"></div>
	
	<a class="menuItem" href=""
  		   onclick="return false;"
  		   onmouseover="menuItemMouseover(event, 'all_active_invoices');">
  		   <span class="menuItemText">Active Invoices</span>
  		   <span class="menuItemArrow">&#9654;</span>
  	</a>	
	
	<a class="menuItem" href=""
  		   onclick="return false;"
  		   onmouseover="menuItemMouseover(event, 'all_action_invoices');">
  		   <span class="menuItemText">Action Invoices</span>
  		   <span class="menuItemArrow">&#9654;</span>
  	</a>	
  	
	<a class="menuItem" href=""
  		   onclick="return false;"
  		   onmouseover="menuItemMouseover(event, 'all_inactive_invoices');">
  		   <span class="menuItemText">Inactive Invoices</span>
  		   <span class="menuItemArrow">&#9654;</span>
  	</a>	
  	
	<a class="menuItem" href=""
  		   onclick="return false;"
  		   onmouseover="menuItemMouseover(event, 'all_completed_invoices');">
  		   <span class="menuItemText">Complete Invoices</span>
  		   <span class="menuItemArrow">&#9654;</span>
  	</a>	
	
	
</div>

<div id="all_web_invoices" class="menu" onmouseover="menuMouseover(event)">

	<a class="menuItem" href=""
  		   onclick="return false;"
  		   onmouseover="menuItemMouseover(event, 'all_branch_web_sales');">
  		   <span class="menuItemText"><fmt:message key="viewstats.heading"/></span>
  		   <span class="menuItemArrow">&#9654;</span>
  	</a>

	<div class="menuItemSep"></div>	
 
	<a class="menuItem" href="/central/listwebinvoices.html?paid=false">
		Unpaid
	</a>
	
	<a class="menuItem" href="/central/listwebinvoices.html?paid=true">
		Paid
	</a>
	
	<div class="menuItemSep"></div>
	
	<a class="menuItem" href="/central/listwebinvoices.html">
		All
	</a>
	
</div>


<div id="all_active_invoices" class="menu"
     onmouseover="menuMouseover(event)">
     
	<a class="menuItem" href="/central/listinvoices.html?type=Paid&excludeComplete=true">
		Paid
	</a>
	
	<a class="menuItem" href="/central/listinvoices.html?type=Web Order&excludeComplete=true">
		Web Orders
	</a>
	

	<a class="menuItem" href="/central/listinvoices.html?type=Partially Paid&excludeComplete=true">
		Partially Paid
	</a>

</div>

<div id="all_action_invoices" class="menu"
     onmouseover="menuMouseover(event)">

	<a class="menuItem" href="/central/listinvoices.html?transportStatus=Labeled&transportType=Delivery">
		Labeled for Delivery
	</a>

	<a class="menuItem" href="/central/listinvoices.html?transportStatus=Labeled&transportType=Pickup">
		Labeled for Pickup
	</a>
	
	<div class="menuItemSep"></div>
	
	<a class="menuItem" href="/central/listinvoices.html?transportStatus=Order&transportType=Delivery">
		Unordered Deliveries
	</a>
	
	<a class="menuItem" href="/central/listinvoices.html?transportStatus=Order&transportType=Pickup">
		Unordered Pickups
	</a>
	
	<div class="menuItemSep"></div>	
	
	<a class="menuItem" href="/central/listinvoices.html?transportStatus=Damaged">
		Damaged
	</a>
	
	<a class="menuItem" href="/central/listinvoices.html?transportStatus=Special Attention">
		Special Attention
	</a>

</div>

<div id="all_inactive_invoices" class="menu"
     onmouseover="menuMouseover(event)">

	<a class="menuItem" href="/central/listinvoices.html?type=Layaway&excludeComplete=true">
		Layaway
	</a>	

	<a class="menuItem" href="/central/listinvoices.html?type=Quote">
		Quote
	</a>
	
	<a class="menuItem" href="/central/listinvoices.html?type=Canceled">
		Canceled
	</a>	

</div>

<div id="all_completed_invoices" class="menu"
     onmouseover="menuMouseover(event)">

	<a class="menuItem" href="/central/listinvoices.html?transportStatus=Delivered">
		Delivered
	</a>	

	<a class="menuItem" href="/central/listinvoices.html?transportStatus=Picked Up">
		Picked Up
	</a>
	
</div>



<div id="all_branch_sales" class="menu"
     onmouseover="menuMouseover(event)">

	<a class="menuItem" href="/central/viewstats.html">
		All Sections
	</a>

	<div class="menuItemSep"></div>

	<a class="menuItem" href="/central/viewstats.html?section=weekday">
		Weekdays
	</a>
	
	<a class="menuItem" href="/central/viewstats.html?section=employee">
		Sales People
	</a>

	<a class="menuItem" href="/central/viewstats.html?section=source">
		Found Us By
	</a>

	<a class="menuItem" href="/central/viewstats.html?section=category">
		Categories
	</a>

</div>

<div id="all_branch_web_sales" class="menu"
     onmouseover="menuMouseover(event)">

	<a class="menuItem" href="/central/viewstats.html?type=weborder">
		All Sections
	</a>

	<div class="menuItemSep"></div>

	<a class="menuItem" href="/central/viewstats.html?type=weborder&section=weekday">
		Weekdays
	</a>
	
	<a class="menuItem" href="/central/viewstats.html?type=weborder&section=employee">
		Sales People
	</a>

	<a class="menuItem" href="/central/viewstats.html?type=weborder&section=source">
		Found Us By
	</a>

	<a class="menuItem" href="/central/viewstats.html?type=weborder&section=category">
		Categories
	</a>

</div>


<c:forEach items="${model.invoiceBranches}" var="invoiceBranch">	

<div id="<c:out value="${invoiceBranch.id}"/>_invoices" class="menu"
     onmouseover="menuMouseover(event)">
 
	<a class="menuItem" href=""
  		   onclick="return false;"
  		   onmouseover="menuItemMouseover(event, '<c:out value="${invoiceBranch.id}"/>_sales');">
  		   <span class="menuItemText"><fmt:message key="viewstats.heading"/></span>
  		   <span class="menuItemArrow">&#9654;</span>
  	</a>	
  	
	<a class="menuItem" href="/central/searchsales.html?branch=<c:out value="${invoiceBranch.id}"/>">
		Search Sales
	</a>
	
	<div class="menuItemSep"></div>
	
	<a class="menuItem" href=""
  		   onclick="return false;"
  		   onmouseover="menuItemMouseover(event, '<c:out value="${invoiceBranch.id}"/>_web_invoices');">
  		   <span class="menuItemText">Web Invoices</span>
  		   <span class="menuItemArrow">&#9654;</span>
  	</a>	
	
	<div class="menuItemSep"></div>
	
	<a class="menuItem" href=""
  		   onclick="return false;"
  		   onmouseover="menuItemMouseover(event, '<c:out value="${invoiceBranch.id}"/>_active_invoices');">
  		   <span class="menuItemText">Active Invoices</span>
  		   <span class="menuItemArrow">&#9654;</span>
  	</a>	
	
	<a class="menuItem" href=""
  		   onclick="return false;"
  		   onmouseover="menuItemMouseover(event, '<c:out value="${invoiceBranch.id}"/>_action_invoices');">
  		   <span class="menuItemText">Action Invoices</span>
  		   <span class="menuItemArrow">&#9654;</span>
  	</a>	
  	
	<a class="menuItem" href=""
  		   onclick="return false;"
  		   onmouseover="menuItemMouseover(event, '<c:out value="${invoiceBranch.id}"/>_inactive_invoices');">
  		   <span class="menuItemText">Inactive Invoices</span>
  		   <span class="menuItemArrow">&#9654;</span>
  	</a>	
  	
	<a class="menuItem" href=""
  		   onclick="return false;"
  		   onmouseover="menuItemMouseover(event, '<c:out value="${invoiceBranch.id}"/>_completed_invoices');">
  		   <span class="menuItemText">Complete Invoices</span>
  		   <span class="menuItemArrow">&#9654;</span>
  	</a>	

</div>

<div id="<c:out value="${invoiceBranch.id}"/>_sales" class="menu"
     onmouseover="menuMouseover(event)">

	<a class="menuItem" href="/central/viewstats.html?branch=<c:out value="${invoiceBranch.id}"/>">
		All Sections
	</a>
	
	<div class="menuItemSep"></div>
	
	<a class="menuItem" href="/central/viewstats.html?branch=<c:out value="${invoiceBranch.id}"/>&section=weekday">
		Weekdays
	</a>
	
	<a class="menuItem" href="/central/viewstats.html?branch=<c:out value="${invoiceBranch.id}"/>&section=employee">
		Employees
	</a>

	<a class="menuItem" href="/central/viewstats.html?branch=<c:out value="${invoiceBranch.id}"/>&section=source">
		Found Us By
	</a>

	<a class="menuItem" href="/central/viewstats.html?branch=<c:out value="${invoiceBranch.id}"/>&section=category">
		Categories
	</a>
	
	
</div>

<div id="<c:out value="${invoiceBranch.id}"/>_web_sales" class="menu"
     onmouseover="menuMouseover(event)">

	<a class="menuItem" href="/central/viewstats.html?type=weborder&branch=<c:out value="${invoiceBranch.id}"/>">
		All Sections
	</a>
	
	<div class="menuItemSep"></div>
	
	<a class="menuItem" href="/central/viewstats.html?type=weborder&branch=<c:out value="${invoiceBranch.id}"/>&section=weekday">
		Weekdays
	</a>
	
	<a class="menuItem" href="/central/viewstats.html?type=weborder&branch=<c:out value="${invoiceBranch.id}"/>&section=employee">
		Employees
	</a>

	<a class="menuItem" href="/central/viewstats.html?type=weborder&branch=<c:out value="${invoiceBranch.id}"/>&section=source">
		Found Us By
	</a>

	<a class="menuItem" href="/central/viewstats.html?type=weborder&branch=<c:out value="${invoiceBranch.id}"/>&section=category">
		Categories
	</a>
	
	
</div>


<div id="<c:out value="${invoiceBranch.id}"/>_web_invoices" class="menu"
     onmouseover="menuMouseover(event)">
     
	<a class="menuItem" href=""
  		   onclick="return false;"
  		   onmouseover="menuItemMouseover(event, '<c:out value="${invoiceBranch.id}"/>_web_sales');">
  		   <span class="menuItemText"><fmt:message key="viewstats.heading"/></span>
  		   <span class="menuItemArrow">&#9654;</span>
  	</a>	

	<div class="menuItemSep"></div>	

	<a class="menuItem" href="/central/listwebinvoices.html?branch=<c:out value="${invoiceBranch.id}"/>&paid=false">
		Unpaid
	</a>
	
	<a class="menuItem" href="/central/listwebinvoices.html?branch=<c:out value="${invoiceBranch.id}"/>&paid=true">
		Paid
	</a>
	
	<div class="menuItemSep"></div>

	<a class="menuItem" href="/central/listwebinvoices.html?branch=<c:out value="${invoiceBranch.id}"/>">
		All
	</a>	
	

</div>


<div id="<c:out value="${invoiceBranch.id}"/>_active_invoices" class="menu"
     onmouseover="menuMouseover(event)">

	<a class="menuItem" href="/central/listinvoices.html?branch=<c:out value="${invoiceBranch.id}"/>&type=Paid&excludeComplete=true">
		Paid
	</a>
	
	<a class="menuItem" href="/central/listinvoices.html?branch=<c:out value="${invoiceBranch.id}"/>&type=Web Order&excludeComplete=true">
		Web Orders
	</a>
	

	<a class="menuItem" href="/central/listinvoices.html?branch=<c:out value="${invoiceBranch.id}"/>&type=Partially Paid&excludeComplete=true">
		Partially Paid
	</a>

</div>

<div id="<c:out value="${invoiceBranch.id}"/>_action_invoices" class="menu"
     onmouseover="menuMouseover(event)">

	<a class="menuItem" href="/central/listinvoices.html?branch=<c:out value="${invoiceBranch.id}"/>&transportStatus=Labeled&transportType=Delivery">
		Labeled for Delivery
	</a>

	<a class="menuItem" href="/central/listinvoices.html?branch=<c:out value="${invoiceBranch.id}"/>&transportStatus=Labeled&transportType=Pickup">
		Labeled for Pickup
	</a>
	
	<div class="menuItemSep"></div>
	
	<a class="menuItem" href="/central/listinvoices.html?branch=<c:out value="${invoiceBranch.id}"/>&transportStatus=Order&transportType=Delivery">
		Unordered Deliveries
	</a>
	
	<a class="menuItem" href="/central/listinvoices.html?branch=<c:out value="${invoiceBranch.id}"/>&transportStatus=Order&transportType=Pickup">
		Unordered Pickups
	</a>
	
	<div class="menuItemSep"></div>	
	
	<a class="menuItem" href="/central/listinvoices.html?branch=<c:out value="${invoiceBranch.id}"/>&transportStatus=Damaged">
		Damaged
	</a>
	
	<a class="menuItem" href="/central/listinvoices.html?branch=<c:out value="${invoiceBranch.id}"/>&transportStatus=Special Attention">
		Special Attention
	</a>
	

</div>

<div id="<c:out value="${invoiceBranch.id}"/>_inactive_invoices" class="menu"
     onmouseover="menuMouseover(event)">

	<a class="menuItem" href="/central/listinvoices.html?branch=<c:out value="${invoiceBranch.id}"/>&type=Layaway&excludeComplete=true">
		Layaway
	</a>	

	<a class="menuItem" href="/central/listinvoices.html?branch=<c:out value="${invoiceBranch.id}"/>&type=Quote">
		Quote
	</a>
	
	<a class="menuItem" href="/central/listinvoices.html?branch=<c:out value="${invoiceBranch.id}"/>&type=Canceled">
		Canceled
	</a>	

</div>

<div id="<c:out value="${invoiceBranch.id}"/>_completed_invoices" class="menu"
     onmouseover="menuMouseover(event)">

	<a class="menuItem" href="/central/listinvoices.html?branch=<c:out value="${invoiceBranch.id}"/>&transportStatus=Delivered">
		Delivered
	</a>	

	<a class="menuItem" href="/central/listinvoices.html?branch=<c:out value="${invoiceBranch.id}"/>&transportStatus=Picked Up">
		Picked Up
	</a>
	
</div>

</c:forEach>


<div id="orders" class="menu" onmouseover="menuMouseover(event)">  

	<a class="menuItem" href="/central/searchorders.html">
		Search Purchase Orders
	</a>
	
	<div class="menuItemSep"></div>

	<a class="menuItem" href="/central/savedorders.html">
		All Saved
	</a>
	
	<div class="menuItemSep"></div>
	
	<a class="menuItem" href=""
  		   onclick="return false;"
  		   onmouseover="menuItemMouseover(event, 'backorders');">
  		   <span class="menuItemText">Back Orders</span>
  		   <span class="menuItemArrow">&#9654;</span>
  	</a>
  		
	<div class="menuItemSep"></div>		

	<a class="menuItem" href="/central/listorders.html">
		All Submitted
	</a>
	
	<c:forEach items="${model.unsubmittedOrderVendors}" var="unsubvendor">		
		<a class="menuItem" href="/central/listorders.html?vendorId=<c:out value="${unsubvendor.id}"/>">
			Submitted - <c:out value="${unsubvendor.name}"/>
		</a>	  				
	</c:forEach>
	
	<div class="menuItemSep"></div>
	
	<a class="menuItem" href="/central/listspecialitems.html">
		Special Items
	</a>
	
	<a class="menuItem" href="/central/exportorders.html">
		Export Orders
	</a>

</div>

<div id="backorders" class="menu" onmouseover="menuMouseover(event)">
	
	<a class="menuItem" href="/central/listbackorders.html">
		All Branches
	</a>
	
	<div class="menuItemSep"></div>
	
	<c:forEach items="${model.backOrderBranches}" var="backOrderBranch">	
		<a class="menuItem" href="/central/listbackorders.html?branch=<c:out value="${backOrderBranch.id}"/>">
			<c:out value="${backOrderBranch.name}"/>
		</a>
	</c:forEach>
	
</div> 

<div id="reports" class="menu" onmouseover="menuMouseover(event)"> 
	
	<a class="menuItem" href="/central/listorderreports.html">
		List Reports
	</a>  
	
	<a class="menuItem" href="/central/createorderreport.html">
		Create Reports
	</a> 
 	
</div>

<div id="itemMenu" class="menu" onmouseover="menuMouseover(event)">  		  	

	<a class="menuItem" href="/central/additem.html">
		Add Items
	</a>  
	
	<a class="menuItem" href="/central/importitems.html">
		Import Items
	</a> 
 	
</div> 

<div id="branches" class="menu" onmouseover="menuMouseover(event)">  		  	

	<a class="menuItem" href="/central/listbranches.html?type=active">
		Active Branches
	</a>
	
	<a class="menuItem" href="/central/listbranches.html?type=deleted">
		Deleted Branches
	</a>  
	
	<div class="menuItemSep"></div>	
	
	<a class="menuItem" href="/central/addbranch.html">
		Add Branch
	</a> 
	
	<div class="menuItemSep"></div>
	
	<a class="menuItem" href="/central/recentpayments.html">
		Recent Payments
	</a> 	
	
	<a class="menuItem" href="/central/payments.html">
		All Payments
	</a> 
	
	<div class="menuItemSep"></div>
	
	<c:forEach items="${model.branchesFromHeaders}" var="branchHeader">	
	
	   <a class="menuItem" 
	       href=""
   		   onclick="return false;"
   		   onmouseover="menuItemMouseover(event, '<c:out value="${branchHeader.id}"/>_branches');">
   		   <span class="menuItemText"><c:out value="${branchHeader.name}"/></span>
   		   <span class="menuItemArrow">&#9654;</span>
   	   </a>			
		
	</c:forEach>		
 	
</div>



<c:forEach items="${model.branchesFromHeaders}" var="branchHeader">

<div id="<c:out value="${branchHeader.id}"/>_branches" class="menu"
     onmouseover="menuMouseover(event)">
		
	<a class="menuItem" href="/central/updatebranch.html?id=<c:out value="${branchHeader.id}"/>">
		Update Branch
	</a>
	
	<a class="menuItem" href="/central/listemployees.html?branch=<c:out value="${branchHeader.id}"/>">
		List Employees
	</a>	  				
	
	
	<a class="menuItem" href="/central/account.html?branch=<c:out value="${branchHeader.id}"/>">
		View Account
	</a>
	
	<div class="menuItemSep"></div>	

	<a class="menuItem" href="/central/listtestimonials.html?branch=<c:out value="${branchHeader.id}"/>">
		List Testimonials
	</a>	
	
	<a class="menuItem" href="/central/addtestimonial.html?branch=<c:out value="${branchHeader.id}"/>">
		Add Testimonial
	</a>	
	
</div>			  				
</c:forEach>


<div id="employees" class="menu" onmouseover="menuMouseover(event)">  		  	

	<a class="menuItem" href="/central/addemployee.html">
		Add Employee
	</a>
	
	<a class="menuItem" href="/central/listemployees.html">
		List Employees
	</a>
 	
</div>	
	

<div id="lineups" class="menu" onmouseover="menuMouseover(event)">  		  	

	<a class="menuItem" href="/central/listlineups.html">
		List Lineups
	</a>
	
	<div class="menuItemSep"></div> 
	
	<c:forEach items="${model.lineupsFromHeaders}" var="lineup">		
		<a class="menuItem" href="/central/updatelineup.html?id=<c:out value="${lineup.id}"/>">
			<c:out value="${lineup.name}"/>
		</a>	  				
	</c:forEach>	 
 	
</div>

<div id="vendors" class="menu" onmouseover="menuMouseover(event)">  		  	

	<a class="menuItem" href="/central/listvendors.html?type=active">
		Active Vendors
	</a>
	
	<a class="menuItem" href="/central/listvendors.html?type=deleted">
		Deleted Vendors
	</a> 
	
	<div class="menuItemSep"></div> 
	
	<c:forEach items="${model.vendorsFromHeaders}" var="vendor">		
		<a class="menuItem" href="/central/updatevendor.html?id=<c:out value="${vendor.id}"/>">
			<c:out value="${vendor.name}"/>
		</a>	  				
	</c:forEach>	 
 	
</div>

<div id="settings" class="menu" onmouseover="menuMouseover(event)">  		  	

	<a class="menuItem" href="/central/backend_settings.html">
		Backend
	</a>  
	
    <a class="menuItem" href="" onclick="return false;" onmouseover="menuItemMouseover(event, 'frontend_settings');">
   		   <span class="menuItemText">Frontend</span>
   		   <span class="menuItemArrow">&#9654;</span>
    </a> 	   
  	   
</div>

<div id="frontend_settings" class="menu" onmouseover="menuMouseover(event)">
	
	<a class="menuItem" id="main_settings" href="/central/frontend_settings.html">
		Main Settings
	</a>
	
	<a class="menuItem" id="update_vacations" href="/central/updatevacations.html">
		Update Vacations
	</a> 	  				
	 	  				

</div> 

<div id="customers" class="menu" onmouseover="menuMouseover(event)"> 

	<a class="menuItem" href=""
  		   onclick="return false;"
  		   onmouseover="menuItemMouseover(event, 'unverified_weborders');">
  		   <span class="menuItemText">Unverified Web Orders</span>
  		   <span class="menuItemArrow">&#9654;</span>
  	</a>
  	
	<a class="menuItem" href=""
  		   onclick="return false;"
  		   onmouseover="menuItemMouseover(event, 'verified_weborders');">
  		   <span class="menuItemText">Verified Web Orders</span>
  		   <span class="menuItemArrow">&#9654;</span>
  	</a> 		  	
  	 		  	
	<a class="menuItem" href="/central/webordercustomers.html">
		All Web Orders
	</a>
	
	<div class="menuItemSep"></div> 
	
	<a class="menuItem" href="/central/cartswithoutcustomers.html">
		Carts without Customers
	</a>
	
	<a class="menuItem" href="/central/saleinfocustomers.html">
		Sale Info Customers
	</a>  	  

	<a class="menuItem" href="/central/bizopportunities.html">
		Biz Opportunities
	</a>
	
	<div class="menuItemSep"></div>  

	<a class="menuItem" href="/central/searchcustomers.html">
		Search Customers
	</a>	
	
	<div class="menuItemSep"></div>
	
	<a class="menuItem" href="/central/listtestimonials.html">
		List Testimonials
	</a>
	
	<a class="menuItem" href="/central/addtestimonial.html">
		Add Testimonial
	</a>
	 	
</div>

<div id="unverified_weborders" class="menu" onmouseover="menuMouseover(event)">
	
	<a class="menuItem" href="/central/webordercustomers.html?status=unverified">
		All Branches
	</a>
	
	<div class="menuItemSep"></div>	
	
	<c:forEach items="${model.unverifiedWebOrderBranches}" var="webOrderBranch">	
		<a class="menuItem" href="/central/webordercustomers.html?status=unverified&branch=<c:out value="${webOrderBranch.id}"/>">
			<c:out value="${webOrderBranch.name}"/>
		</a>
	</c:forEach>
	
</div>

<div id="verified_weborders" class="menu" onmouseover="menuMouseover(event)">

	<a class="menuItem" href="/central/webordercustomers.html?status=verified">
		All Branches
	</a>
	
	<div class="menuItemSep"></div>	

	<c:forEach items="${model.verifiedWebOrderBranches}" var="webOrderBranch">	
		<a class="menuItem" href="/central/webordercustomers.html?status=verified&branch=<c:out value="${webOrderBranch.id}"/>">
			<c:out value="${webOrderBranch.name}"/>
		</a>
	</c:forEach>
	
</div> 
 


<!-- 
<div id="keywordsearches" class="menu" onmouseover="menuMouseover(event)">  		  	

	<a class="menuItem" href="/central/listkeywordsearches.html">
		Keyword Searches
	</a>  
 	
</div>
-->

<div id="feedback" class="menu" onmouseover="menuMouseover(event)">  		  	

	<a class="menuItem" href="/central/sendfeedback.html" onclick="return popup(this, 'notes')">
		Feedback
	</a>  
 	
</div>

<div id="logout" class="menu" onmouseover="menuMouseover(event)">  		  	

	<a class="menuItem" href="/central/adminlogout.html">
		Logout
	</a>  
 	
</div>
