<%-- 
    Document   : register
    Created on : Jul 12, 2020, 4:20:26 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="POST" action="/Authorize/register">
            Phone: <input type="text" name="phone"/> <br/>
            Pass: <input type="password" name="password"/> <br/>
            Name: <input type="text" name="fullname"/> <br/>
            Gender: 
            <input type="radio" id="male" name="gender" value="false">
            <label for="male">Male</label><br>
            <input type="radio" id="female" name="gender" value="true">
            <label for="female">Female</label><br>
            
            Address:
            <select name="city">
                <option value="HCM">Ho Chi Minh</option>
                <option value="HN">Ha Noi</option>
                <option value="HP">Hai Phong</option>
            </select>
            
            <select name="town">
                <option value="Quan 1">Quan 1</option>
                <option value="Quan 2">Quan 2</option>
                <option value="Quan 3">Quan 3</option>
            </select>
            
            <select name="ward">
                <option value="Tan Quy">Tan Quy</option>
                <option value="Tan Son Nhi">Tan Son Nhi</option>
                <option value="Tay Thanh">Tay Thanh</option>
            </select>
            
            <select name="street">
                <option value="Cau Xeo">Cau Xeo</option>
                <option value="Go Dau">Go Dau</option>
                <option value="Le Sat">Le Sat</option>
            </select>
            <button>Register</button>
        </form>
    </body>
</html>
