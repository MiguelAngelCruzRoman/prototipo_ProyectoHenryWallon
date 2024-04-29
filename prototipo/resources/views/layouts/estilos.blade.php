<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<style>
    .navbar-custom {
        background-color: #336A7B;
    }

    .navbar-brand img {
        width: 30px;
        height: 30px;
        margin-right: 10px;
    }

    .navbar-brand span {
        color: white;
        font-weight: bold;
        font-size: 1.2em;
    }

    .navbar-brand {
        margin-left: 20px;
    }

    .navbar-nav .nav-link {
        color: white;
        margin-left: 20px;
    }

    .navbar-nav .nav-link:hover {
        color: white;
    }

    .navbar-brand,
    .navbar-nav .nav-link {
        transition: color 0.3s;
    }

    .navbar-toggler {
        border-color: white;
    }

    .navbar-toggler-icon {
        background-color: white;
    }

    .user-img {
        width: 40px;
        height: 40px;
        border-radius: 50%;
        margin-right: 10px;
    }

    .bg-gradient-primary {
        background-color: #336A7B !important;
        background-image: linear-gradient(180deg, #336A7B 10%, #2C5364 100%) !important;
        background-size: cover !important;
    }

    body {
        display: flex;
        flex-direction: column;
        min-height: 100vh;
    }

    main {
        flex: 1;
    }

    footer {
        background-color: #f8f9fa;
        padding: 20px 0;
        text-align: center;
        margin-top: auto;
    }

    .card-style {
        border: 4px solid #000000;
        background-color: #CDC6C6;
        border-radius: 20px;
    }

    .btn {
        flex: 1;
        background-color: #336A7B;
        border: 4px solid #000000;
        border-radius: 10px;
        color: white;
        padding: 3px;
        margin: 0 5px;
    }

    .container {
        min-height: 80vh;
    }

    .circular-img {
        width: 150px;
        height: 150px;
        border-radius: 50%;
        border: 5px solid black;
        position: absolute;
        top: 40%;
        left: 50%;
        transform: translate(-50%, -50%);
        z-index: 1;
    }

    .card-img-rectangular {
        width: 100%;
        height: 200px;
        border-radius: 15px;
        border-bottom: 4px solid #000000;
        border-top: 1px solid #000000;
        object-fit: cover;
    }

    .btn-group {
        position: absolute;
        bottom: 15px;
        left: 50%;
        transform: translateX(-50%);
        display: flex;
        justify-content: space-between;
        width: 100%;
    }
</style>
