<!-- edit.blade.php -->
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title> </title>
    <link rel="stylesheet" href="{{asset('css/app.css')}}">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</head>

<body>
    <div class="container">
        <form method="post" action="{{url('/edit/'.$post->id)}}">
            @csrf
            <div class="row">
                <div class="col-md-4"></div>
                <div class="form-group col-md-4">
                    <lable>Approval</lable>
                    <select name="approve">
                        <option value="0" @if($post->status==0)selected @endif>Pending</option>
                        <option value="1" @if($post->status==1)selected @endif>Approve</option>
                        <option value="2" @if($post->status==2)selected @endif>Reject</option>
                        <option value="3" @if($post->status==3)selected @endif>Postponed</option>
                    </select>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="form-group col-md-4">
                    <button type="submit" class="btn btn-success" style="margin-top:40px">Update</button>
                </div>
            </div>
        </form>
    </div>
</body>

</html>