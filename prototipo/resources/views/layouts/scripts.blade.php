<script>
    function goBack() {
        window.history.back();
    }
</script>

<script>
    function logoutAndDestroySession() {
        sessionStorage.clear(); 

        document.getElementById('logout-form').submit();
    }
</script>


