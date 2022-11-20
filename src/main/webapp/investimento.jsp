<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Financilita | Facilidade Financeira</title>
    <link rel="shortcut icon" href="assets/img/favicon.png" type="image/x-icon">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css" />
    <link rel="stylesheet" href="assets/css/register.css" />
    <script src="assets/js/scripts.js" defer></script>
</head>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Financilita | Facilidade Financeira</title>
    <link rel="shortcut icon" href="assets/img/favicon.png" type="image/x-icon">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css" />
    <link rel="stylesheet" href="assets/css/register.css" />
    <script src="assets/js/scripts.js" defer></script>
</head>

<body>

    <header>
        <a class="logo" href="index.html"></a>

        <div>
            <input type="checkbox" name="change-theme" id="change-theme" />
            <label for="change-theme">
                <i class="bi bi-sun"></i>
                <i class="bi bi-moon"></i></label>
        </div>
    </header>

    <section class="login-block">
        <div class="container">
            <div class="row">
                <div class="col-md-12 login-sec">
                    <h2 class="text-center">Novo Investimento</h2>
                    <form class="login-form">
                        <div class="form-group">
                            <label class="text-uppercase">Onde Investiu?</label>
                            <input type="text" class="form-control" name="nome">
                        </div>

                        <div class="form-group">
                            <label class="text-uppercase">Valor</label>
                            <input type="number" step="0.01" class="form-control" name="valor">
                        </div>
                                                <div class="form-group">
                            <label class="text-uppercase">Rendimento A.A</label>
                            <input type="number" step="0.01" class="form-control" name="rendi">
                        </div>

                        <div class="form-group">
                            <label class="text-uppercase">Data</label>
                            <input type="date" class="form-control" name="data">
                        </div>

                        <div class="form-check">
                            <button type="submit" class="btn btn-login ">Cadastrar</button>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </section>

</body>

</html>