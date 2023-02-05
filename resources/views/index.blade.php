<!-- index.blade.php -->

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Index Page</title>
    <link rel="stylesheet" href="{{asset('css/app.css')}}">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>

<body>
    <div class="container">
        <br />
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Title</th>
                    <th>Description</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach($posts as $post)
                <tr>
                    <td>{{$post->id}}</td>
                    <td>{{$post->title}}</td>
                    <td>{{$post->description}}</td>
                    <td>
                        @if($post->status == 0)
                        <span class="label label-primary">Pending</span>
                        @elseif($post->status == 1)
                        <span class="label label-success">Approved</span>
                        @elseif($post->status == 2)
                        <span class="label label-danger">Rejected</span>
                        @else
                        <span class="label label-info">Postponed</span>
                        @endif
                    </td>
                    <td><a href="{{url('/edit/'.$post->id)}}" method="get" class="btn btn-warning">Moderate</a></td>
                </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</body>

</html>