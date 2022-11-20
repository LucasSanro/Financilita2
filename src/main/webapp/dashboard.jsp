<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 5.01 Transitional//EN" "http://www.w3.org/TR/html5/loose.dtd">
<html lang="pt-br">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Financilita | Facilidade Financeira</title>
  <link rel="shortcut icon" href="assets/img/favicon.png" type="image/x-icon">

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="assets/css/dashboard.css" />
  <script src="assets/js/scripts.js" defer></script>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
    integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
    integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
    integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
  
</head>

<body>

  <header>
    <a class="btnh" data-bs-toggle="offcanvas" href="#offcanvasExample" role="button" aria-controls="offcanvasExample">
      <i class="bi bi-list"></i>
    </a>

    <div class="offcanvas offcanvas-start text-bg-dark" tabindex="-1" id="offcanvasExample"
      aria-labelledby="offcanvasExampleLabel">
      <div class="logo-div">
        <a class="logo-menu" href="index.jsp"></a>
      </div>

      <div>
        <button class="btn btn-secondary border-0" type="button">
          <i class="bi bi-columns"></i> Dashboard
        </button>
      </div>

      <div>
        <button class="btn btn-secondary border-0" type="button">
          <i class="bi bi-person-fill"></i> User Profile
        </button>
      </div>

      <div>
        <button class="btn btn-secondary border-0" type="button">
          <i class="bi bi-plus-lg"></i> Cadastrar
        </button>
      </div>

      <div>
        <button class="btn btn-exit btn-secondary border-0" type="button">
          <i class="bi bi-box-arrow-left "></i>
        </button>
      </div>
    </div>
    <a class="logo" href="index.jsp"></a>

    <div>
      <input type="checkbox" name="change-theme" id="change-theme" />
      <label for="change-theme">
        <i class="bi bi-sun"></i>
        <i class="bi bi-moon"></i></label>
    </div>

  </header>


  <section>

    <div class="card text-center col-md-5 ">
      <div class="card-header ">
        <ul class="nav nav-pills card-header-pills" id="myTab" role="tablist">
          <li class="nav-item">
            <a class="nav-link active" id="receitas-tab" data-toggle="tab" href="#receitas" role="tab"
              aria-controls="receitas" aria-selected="false" href="#">Finanças</a>
          </li>
        </ul>
      </div>
      <div class="card-body" id="myTabContent">
        <div class="tab-pane fade show active" id="receitas" role="tabpanel" aria-labelledby="receitas-tab">
          <canvas id="myChart" style="width:100%;max-width:600px"></canvas>

          <script>
            var xValues = [100, 200, 300, 400, 500, 600, 700, 800, 900, 1000];

            new Chart("myChart", {
              type: "line",
              data: {
                labels: xValues,
                datasets: [{
                  data: [860, 1140, 1060, 1060, 1070, 1110, 1330, 2210, 7830, 2478],
                  borderColor: "red",
                  fill: false
                }, {
                  data: [1600, 1700, 1700, 1900, 2000, 2700, 4000, 5000, 6000, 7000],
                  borderColor: "green",
                  fill: false
                }, {
                  data: [300, 700, 2000, 5000, 6000, 4000, 2000, 1000, 200, 100],
                  borderColor: "blue",
                  fill: false
                }]
              },
              options: {
                legend: { display: false }
              }
            });
          </script>
        </div>
      </div>
    </div>

    <div class="container">
     <button type="button" class="btn btn-outline-success text" onclick="window.location.href='receita.jsp'"><i
          class="bi bi-receipt"></i></button>

      <button type="button" class="btn btn-outline-danger" onclick="window.location.href='despesa.jsp'"><i
          class="bi bi-currency-dollar"></i></button>

      <button type="button" class="btn btn-outline-primary" onclick="window.location.href='investimento.jsp'"><i
          class="bi bi-graph-up-arrow"></i></button>
    </div>

    <div class="card col-md-4 text-center" id="cartao">
      <h5>Limite</h5>
      <h1>R$00.00</h1>
      <p>**** **** **** <b>1234</b></p>
      <img
        src="/assets/img/kisspng-payment-credit-card-mastercard-computer-icons-disc-mastercard-5ac3fb09101b13.130336461522793225066.png">
    </div>
    </div>

    <div class="card text-center col-md-4" id="transacoes">
      <div class="card-header ">
        <h4>Transações Recentes</h4>
      </div>
      <div class="card-body" id="myTabContent">
        <table class="table table-striped">
           <tr>
				<th>Nome</th>
				<th>valor</th>
				<th>Data </th>
				
				<c:forEach items="${DespesaBean}" var="d">
				<tr>
					<td>${d.nm_despesa}</td>
					<td>${d.vl_despesa}</td>
					<td>
						<fmt:formatDate value="${d.dt_despesa.time }" pattern="dd/MM/yyyy"/>
					</td>
				</tr>
					</c:forEach>
        </table>
      </div>
    </div>
  </section>

</body>
</html>