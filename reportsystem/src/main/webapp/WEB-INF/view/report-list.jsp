<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>

<head>
<title>Home Page</title>

<%@ include file="/WEB-INF/view/sources.jsp"%>

</head>
<body>

	<%@ include file="/WEB-INF/view/navigation-bar.jsp"%>

	<div class="container-fluid">
		<div class="row">

			<%@ include file="/WEB-INF/view/side-bar-menu.jsp"%>

			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
				<div
					class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
					<h1 class="h2">Historia raportów</h1>
					<div class="btn-toolbar mb-2 mb-md-0">
						<div class="btn-group me-2">
							<button type="button" class="btn btn-sm btn-outline-secondary">Share</button>
							<button type="button" class="btn btn-sm btn-outline-secondary">Export</button>
						</div>
						<button type="button"
							class="btn btn-sm btn-outline-secondary dropdown-toggle">
							<span data-feather="calendar"></span> This week
						</button>
					</div>
				</div>

				<div class="row">
					<div class="table-responsive">
						<table
							class="table table-striped table-sm table-bordered table-hover">
							<thead class="table-dark">
								<tr>
									<th scope="col">#</th>
									<th scope="col">Nazwa użytkownika</th>
									<th scope="col">Linia</th>
									<th scope="col">Stacja</th>
									<th scope="col">Data</th>
									<th scope="col">Opcje</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${reports != null}">
									<c:forEach var="report" items="${reports}">
										<tr>
											<c:url var="detailsLink" value="/report/showReportDetails">
												<c:param name="id" value="${report.id}" />
											</c:url>

											<td>${report.id}</td>
											<td>${report.user.userName}</td>
											<td>${report.productionLine.name}</td>
											<td>${report.productionMachine.name}</td>
											<td>${report.date}</td>
											<td>
												<a href="${detailsLink}"><i class="bi bi-search"></i></a>
											</td>
											
										</tr>
									</c:forEach>
								</c:if>
							</tbody>
						</table>
					</div>
				</div>
			</main>
		</div>
	</div>

</body>
</html>