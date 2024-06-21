<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aumento de Seguidores no Instagram S.I.B</title>
    <!-- Incluir Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
        integrity="sha512-******************" crossorigin="anonymous" />

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #000000;
            color: #ffffff;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }

        h1 {
            text-align: center;
        }

        .button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #00FF00;
            color: #ffffff;
            text-decoration: none;
            border-radius: 10px;
            text-align: center;
            margin: 10px;
            transition: background-color 0.3s ease;
        }

        .button:hover {
            background-color: #00CC00;
        }

        .section {
            background-color: #111111;
            padding: 20px;
            border-radius: 10px;
            margin-top: 20px;
        }

        p {
            margin-bottom: 10px;
        }

        form {
            background-color: #111111;
            padding: 20px;
            border-radius: 10px;
            margin-top: 20px;
            display: none;
            /* Oculta o formulário por padrão */
        }

        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0 15px 0;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #222222;
            color: #ffffff;
        }

        input[type="submit"] {
            background-color: #00FF00;
            color: #ffffff;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #00CC00;
        }

        .back-link {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #ffffff;
            text-decoration: none;
        }

        .plan {
            background-color: #222222;
            padding: 20px;
            margin-top: 20px;
            border-radius: 10px;
        }

        .plan h3 {
            color: #00FF00;
            text-align: center;
        }

        .plan p {
            color: #ffffff;
            text-align: center;
        }

        footer {
            text-align: center;
            margin-top: 20px;
        }

        .social-icons a {
            margin: 0 10px;
            color: #ffffff;
            font-size: 24px;
        }
    </style>

    <script>
        // Função para criar um cookie com nome, valor e tempo de expiração em dias
        function criarCookie(nome, valor, dias) {
            var data = new Date();
            data.setTime(data.getTime() + (dias * 24 * 60 * 60 * 1000));
            var expires = "expires=" + data.toUTCString();
            document.cookie = nome + "=" + valor + ";" + expires + ";path=/";
        }

        // Função para ler o valor de um cookie específico
        function lerCookie(nome) {
            var nomeCookie = nome + "=";
            var cookies = document.cookie.split(';');
            for (var i = 0; i < cookies.length; i++) {
                var cookie = cookies[i];
                while (cookie.charAt(0) == ' ') {
                    cookie = cookie.substring(1);
                }
                if (cookie.indexOf(nomeCookie) == 0) {
                    return cookie.substring(nomeCookie.length, cookie.length);
                }
            }
            return "";
        }

        var usuarioLogado = false; // Variável que controla se o usuário está logado ou não

        function verificarUsuarioLogado() {
            var usuario = lerCookie("usuarioLogado");
            if (usuario !== "") {
                usuarioLogado = true;
            }
        }

        function mostrarFormulario() {
            var form = document.getElementById("formulario");
            form.style.display = "block"; // Exibe o formulário quando chamado
        }

        function mostrarPlanos() {
            var form = document.getElementById("formulario");
            if (!usuarioLogado) {
                alert("Você precisa criar uma conta para acessar os planos.");
                mostrarFormulario(); // Exibe o formulário de criação de conta
            } else {
                form.style.display = "none"; // Oculta o formulário se estiver visível
                var planos = document.getElementById("planos");
                planos.style.display = "block"; // Exibe os planos quando o usuário está logado
            }
        }

        function criarConta() {
            usuarioLogado = true; // Define que o usuário está logado ao criar a conta
            criarCookie("usuarioLogado", "true", 30); // Cria um cookie que expira em 30 dias
            var form = document.getElementById("formulario");
            form.style.display = "none"; // Oculta o formulário de criação de conta
            mostrarPlanos(); // Exibe os planos após criar a conta
        }
    </script>

</head>

<body onload="verificarUsuarioLogado()">
    <div class="container">
        <h1>Incremente seus seguidores no Instagram!</h1>
        <p>de 0 a 1000 em um clique</p>
        <a href="#" class="button" onclick="mostrarPlanos()">Ver Planos</a>
        <a href="#" class="button" onclick="mostrarFormulario()">Criar Conta</a>

        <div class="section">
            <h2>Por que escolher nossos serviços?</h2>
            <p>Nossos serviços são seguros, rápidos e eficazes. Aumente sua visibilidade e alcance no Instagram.Seus
                seguidores chegam em poucos minutos</p>
        </div>

        <div class="section">
            <h2>Depoimentos de Clientes</h2>
            <p>"Consegui aumentar meus seguidores de forma rápida e segura. Recomendo!" - João S.</p>
            <p>"Serviço excelente! Meu perfil cresceu significativamente após utilizar os serviços." - Maria P.</p>
        </div>

        <!-- Formulário de Criação de Conta -->
        <form id="formulario" action="#" method="post" style="display: none;">
            <h1>Crie sua Conta</h1>
            <label for="nome">Nome:</label>
            <input type="text" id="nome" name="nome" required>

            <label for="email">E-mail:</label>
            <input type="email" id="email" name="email" required>

            <label for="senha">Senha:</label>
            <input type="password" id="senha" name="senha" required>

            <input type="submit" value="Criar Conta" onclick="criarConta(); return false;">
            <a href="#" class="back-link"
                onclick="document.getElementById('formulario').style.display = 'none'; return false;">Voltar para o
                site</a>
        </form>

        <!-- Catálogo de Planos -->
        <div id="planos" class="plan" style="display: none;">
            <h3>Catálogo de Planos</h3>
            <p>Aqui estão os planos disponíveis para aumentar seus seguidores:</p>

            <div class="plan">
                <h3>Plano Básico</h3>
                <p>100 seguidores por R$ 2,00</p>
                <a href="https://wa.me/message/TGOWWMVHEY2ZO1" class="button">Detalhes</a>
            </div>

            <div class="plan">
                <h3>Plano Avançado</h3>
                <p>500 seguidores por R$ 9,00</p>
                <a href="https://wa.me/message/TGOWWMVHEY2ZO1" class="button">Detalhes</a>
            </div>

            <div class="plan">
                <h3>Plano Premium</h3>
                <p>1000 seguidores por R$ 17,00</p>
                <a href="https://wa.me/message/TGOWWMVHEY2ZO1" class="button">Detalhes</a>
            </div>
        </div>

        <!-- Rodapé com ícones sociais -->
        <div class="social-icons">
            <a href="https://wa.me/message/TGOWWMVHEY2ZO1" target="_blank"><i class="fab fa-whatsapp"></i></a>
            <a href="https://www.instagram.com/wagna_opehayd?igsh=MTlwNzQ4OWhvNmtnMw==" target="_blank"><i
                    class="fab fa-instagram"></i></a>
        </div>
        <p>&copy; 2024 Seu Site - Todos os direitos reservados. Site propriedade da Wagna opehayd™</p>
        </footer>

    </div> <!-- Fim da div container -->

</body>

</html>