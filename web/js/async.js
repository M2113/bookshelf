/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

let reg=function(){
    let yearObj = document.getElementById("year");
    yearObj.addEventListener("change",()=>{
       let data = yearObj.value;
       let xhr = new XMLHttpRequest();
       let semObj = document.getElementById("sem");
       semObj.innerHTML = "<option selected hidden>select semester</option>";
       xhr.onreadystatechange = function(){
           if(xhr.readyState === 4){
               if((xhr.status >= 200 && xhr.status < 300) || xhr.status === 304){
                    var semesters = JSON.parse(xhr.responseText);
                    semesters.sem.forEach(function (semesterObj) {
                        var semester = parseInt(Object.keys(semesterObj)[0]);
                        var option = document.createElement("option");
                        option.value = semester;
                        option.text = semester;
                        semObj.add(option);
                    });
               }
           }
       };
       xhr.open("get",`fc?type=model&page=GetSemester&year=${data}`,true);
       xhr.send(null);
    });
};

let passwordToggle = function() {
    let password = document.getElementById("password");
    let eyeIcon = document.getElementById("toggle");
    eyeIcon.addEventListener("click",()=>{
        if (password.type === "password") {
            password.type = "text";
            eyeIcon.src = "images/visible.png";
        } else {
            password.type = "password";
            eyeIcon.src = "images/hide.png";
        }
    });
};