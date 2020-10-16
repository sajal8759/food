<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="food_and_suppliers.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Home</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


</head>
<body>
    <div class="container">
        <h1>FORM</h1>
        <form id="form1" runat="server">
            <div class="alert alert-success" id="success" runat="server" visible="false">

                <strong>Insert Successfully!</strong>
                <br>
            </div>

            <div class="row">
                <div class="col-md-4 mb-4">
                    <div class="form-group">
                        <label for="exampleInputEmail1">First Name</label>
                        <asp:TextBox type="text" class="form-control" ID="f_name" runat="server" placeholder="First Name" required></asp:TextBox>
                    </div>
                </div>

                <div class="col-md-4 mb-4">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Middle Name</label>
                        <asp:TextBox type="text" class="form-control" ID="m_name" runat="server" placeholder="Enter Middle Name" required></asp:TextBox>
                    </div>
                </div>

                <div class="col-md-4 mb-4">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Last Name</label>
                        <asp:TextBox type="text" class="form-control" ID="l_name" runat="server" placeholder="Last Name" required></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 mb-4">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Phone Number</label>
                        <asp:TextBox type="number" class="form-control" ID="phone_number" runat="server" placeholder="Enter Phone Number" required></asp:TextBox>
                    </div>
                </div>

            </div>

            <div class="col">
                <asp:Button ID="Submit" class="btn btn-primary" runat="server" Text="Submit" OnClick="Submit_Click" />
            </div>

        </form>


    </div>
</body>
</html>
