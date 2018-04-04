<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>



<!-- Page Content -->
<div class="container-fluid" style="background-color:white;">
	<div class="row">

		<!--  Start designing your Html body from here -->


		<div class="col-lg-3"></div>
		<div class="col-lg-6">
			<h1 class="page-header">Add Flight</h1>

			<div class="panel panel-primary">

				<div class="panel-body">


					<form:form method="post" modelAttribute="addflight"
						action="saveflight.html">
						
						
							<div class="form-group">

								<label for="formSName">Flight Number:</label>
								<form:input type="text" path="flightNumber" id="flightnumber"
									class="form-control" name="formSName" />
								<font color='red'>
									<div id="errprojectName"></div>
								</font>

							</div>
						
						
											
						<div class="form-group">

							<label for="formSName">Origin</label> <br>

							<form:select  class="form-control" path="origin">

								<c:forEach items="${ cityList }" var="v">
									<form:option value="${v.cityId }">${v.cityName } </form:option>
								</c:forEach>

							</form:select>


						</div>
						<div class="form-group">

							<label for="formSName">Destination</label> <br>
							<form:select  class="form-control" path="destination">

								<c:forEach items="${ cityList }" var="v">
									<form:option value="${v.cityId }">${v.cityName } </form:option>
								</c:forEach>

							</form:select>

						</div>
						<div class="form-group">

							<label for="formSName">Type</label> <br>
							<form:select  class="form-control" path="type">

								<c:forEach items="${ ftypesList }" var="v">
									<form:option value="${v.ftypeid }">${v.flightype } </form:option>
								</c:forEach>

							</form:select>


						</div>

						<div class="form-group">

							<label for="formSName">Flight Stop</label><br>
							<form:select  class="form-control" path="flightStop">
								<form:option value="0">----Select---- </form:option>
								<c:forEach items="${ cityList }" var="v">
									<form:option value="${v.cityId }">${v.cityName } </form:option>
								</c:forEach>

							</form:select>

						</div>


						<div class="col-lg-12">
							<button type="submit" class="btn btn-primary" id="submitbtn">Submit</button>
						</div>
					</form:form>
				</div>



			</div>
		</div>
	</div>
	<!--end of col-md-6-->

</div>
<!-- /.row -->




<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/dist/css/bootstrap-multiselect.css">
<style>
#categoryUl {
	display: none;
}

body{
background-color: white;

}
</style>
<!-- jQuery -->
<script
	src="${pageContext.request.contextPath}/resources/bower_components/jquery/dist/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/dist/js/bootstrap-datepicker.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/dist/js/metisMenu.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/dist/js/bootstrap-multiselect.js"></script>

<script>
	$(document).ready(function() {

		

	});
</script>
