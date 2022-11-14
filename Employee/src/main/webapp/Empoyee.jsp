<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>

    <title>Document</title>
</head>

<body class="body">
    <nav class="navbar navbar-expand-lg nav">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Quadwave</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </li>

                </ul>
            </div>
        </div>
    </nav>
    <div class="emp-section">
        <h2>Employee Details</h2>

        <div class="emp-table">
            <div class="table-nav">
                <div class="searchBox">
                    <input type="text" value="" id="searchEmpTxt">
                    <button class="search-btn" id="search-btn" onclick="searchEmp()">Search</button>
                </div>
                <div class="addUser">
                    <button class="add-btn" id="addBtn" onclick="showNewForm()">Add</button>
                </div>
            </div>
            <div class="empDetails">
                <table class="table">
                    <thead class="table-head">
                        <tr>
                            <th scope="col">Eid</th>
                            <th scope="col" colspan="2">Name</th>
                            <th scope="col">DOB</th>
                            <th scope="col">Experience</th>
                            <th scope="col">Designation</th>
                        </tr>
                    </thead>
                    <tbody id="tbody">
                        <tr class="details">
                            <td scope="row">1</th>
                            <td colspan="2">Mark</td>
                            <td>Otto</td>
                            <td>@mdo</td>
                            <td>ddd</td>
                        </tr>
                        <tr class="details">
                            <td scope="row">2</th>
                            <td colspan="2">kp</td>
                            <td>Otto</td>
                            <td>@mdo</td>
                            <td>ddd</td>
                        </tr>
                        <tr class="details">
                            <td scope="row">3</th>
                            <td colspan="2">AA</td>
                            <td>Otto</td>
                            <td>@mdo</td>
                            <td>ddd</td>
                        </tr>
                        <tr class="details">
                            <td scope="row">4</th>
                            <td colspan="2">HH</td>
                            <td>Otto</td>
                            <td>@mdo</td>
                            <td>ddd</td>
                        </tr>
                        <tr class="details">
                            <td scope="row">5</th>
                            <td colspan="2">MM</td>
                            <td>Otto</td>
                            <td>@mdo</td>
                            <td>ddd</td>
                        </tr>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="userForm animate__backInUp" id="userForm">
        <h3>Add New Employee</h3>
        <hr>
        <form action="">
            <div class="empID elem">
                <label for="">Employee ID</label>
                <select name="" id="empID" onchange="myfunction()">
                    <option value="">--Select--</option>
                    <option value="E-S455">E-S455</option>
                    <option value="E-S456">E-S456</option>
                    <option value="E-S455">E-S457</option>
                    <option value="E-S455">E-S458</option>
                    <option value="E-S455">E-S459</option>
                    <option value="E-S455">E-S460</option>
                    <option value="E-S455">E-S461</option>
                    <option value="E-S455">E-S462</option>
                    <option value="E-S455">E-S463</option>
                    <option value="E-S455">E-S464</option>
                    <option value="E-S455">E-S465</option>
                    <option value="E-S455">E-S466</option>
                    <option value="E-S455">E-S467</option>

                </select>
            </div>
            <div class="empName elem">
                <label for="">Name</label>
                <input id="empName" type="text" value="" readonly>
            </div>
            <div class="dob elem">
                <label for="">DOB</label>
                <input type="date">
            </div>
            <div class="exp elem">
                <label for="">Experience</label>
                <input type="text">
            </div>
            <div class="role elem">
                <label for="">Designation</label>
                <input type="text">
            </div>
            <div class="form-btn">
                <button class="submit">Submit</button>
                <button class="cancel" onclick="showNewForm()">Cancel</button>
            </div>

        </form>
    </div>
</body>
<script >
const id_collection = [
    {
        id: "E-S655",
        name: "Ankit Sharma"
    },
    {
        id: "E-S456",
        name: "Ajay Kumar"
    },
    {
        id: "E-S457",
        name: "Manasi Patil"
    },
    {
        id: "E-S458",
        name: "Harshal Rysingh"
    },
    {
        id: "E-S459",
        name: "Rupali Mahajan"
    },
    {
        id: "E-S460",
        name: "Anil Joshi"
    },
    {
        id: "E-S461",
        name: "Vishakha Bhole"
    },
    {
        id: "E-S462",
        name: "Sushil Mohite"
    },
    {
        id: "E-S463",
        name: "Snehal Panjwani"
    },
    {
        id: "E-S464",
        name: "Sanjana Patil"
    },
    {
        id: "E-S465",
        name: "Niraj Deshmukkh"
    },
    {
        id: "E-S466",
        name: "Rohit Kumar"
    },
    {
        id: "E-S466",
        name: "Aishwarya Jaiswal"
    },
];

// Add new employee form
function showNewForm() {
    let userForm = document.getElementById('userForm');
    console.log("add button clicked")
    if (userForm.style.display != "none") {
        console.log("block");
        userForm.style.display = "block";
    } else if (userForm.style.display != "block") {
        console.log("none");
        userForm.style.display = "none";
    }
}
// set employee name by id
const empName = document.getElementById('empName');
function setName() {
    empName.setAttribute("value", "");
    let empID = document.querySelector('#empID').value;
    console.log(empID);
    for (let key in id_collection) {
        if (id_collection[key].id.includes(empID)) {
            empName.setAttribute("value", id_collection[key].name);
            console.log(id_collection[key].name);
        }
    }
}
</script>
</html>