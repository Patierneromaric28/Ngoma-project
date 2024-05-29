
    <div class="container mt-5">
        @if(Session::has('error'))
            <div class="alert alert-danger">
                <p>{{ __(Session::get('error')) }}</p>
            </div>
        @endif
    </div>
    <!-- Include Bootstrap JS and dependencies (optional) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

