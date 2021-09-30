$(document).ready(function () {

        /*
        This is JQery for the index page.
        */

        $("#news").click(function () {
                $("#new_text").html("This is NEWS!!! Donate now to help me, myself, and I!!! What better news than that!!! Help thee in need! It'll make your heart grow three times its size and my wallet the same!!! This is NEWS!!! Donate now to help me, myself, and I!!! What better news than that!!! Help thee in need! It'll make your heart grow three times its size and my wallet the same!!! This is NEWS!!! Donate now to help me, myself, and I!!! What better news than that!!! Help thee in need! It'll make your heart grow three times its size and my wallet the same!!!This is NEWS!!! Donate now to help me, myself, and I!!! What better news than that!!! Help thee in need! It'll make your heart grow three times its size and my wallet the same!!! This is NEWS!!! Donate now to help me, myself, and I!!! What better news than that!!! Help thee in need! It'll make your heart grow three times its size and my wallet the same!!!");
        });

        $("#feat_news").click(function () {
                $("#new_text").html("NO NEWS!!! Need a sponsor willing to feature some news. Maybe some billionaire, that rhymes with ~'ezos' can sponsor some ad space here! This charity can make use of crypto as well!!! NO NEWS!!! Need a sponsor willing to feature some news. Maybe some billionaire, that rhymes with ~'ezos' can sponsor some ad space here! This charity can make use of crypto as well!!! NO NEWS!!! Need a sponsor willing to feature some news. Maybe some billionaire, that rhymes with ~'ezos' can sponsor some ad space here! This charity can make use of crypto as well!!! NO NEWS!!! Need a sponsor willing to feature some news. Maybe some billionaire, that rhymes with ~'ezos' can sponsor some ad space here! This charity can make use of crypto as well!!! NO NEWS!!! Need a sponsor willing to feature some news. Maybe some billionaire, that rhymes with ~'ezos' can sponsor some ad space here! This charity can make use of crypto as well!!! NO NEWS!!! Need a sponsor willing to feature some news. Maybe some billionaire, that rhymes with ~'ezos' can sponsor some ad space here! This charity can make use of crypto as well!!! ");
        });



        /* Validation Checks
                The following functions are used for validation in the forum.
                These checks will be called upon in the clicking event '#succ'
                to ensure a correct submission.
        */
        function chk_upper(string) {
                var count = 0;
                for (let i = 0; i < string.length; i++) {
                        if (string[i] == string[i].toUpperCase() ) {
                                count++;
                        }
                }
                return count;
        }
        function chk_num(string) {
                var count = 0;
                for (let i = 0; i < string.length; i++) {
                        if (!isNaN(string[i]) == true ) {
                                count++;
                        }
                }
                return count;
        }
        function chk_email(string) {
                let a_stack = [".","@"];
                var count = 0;
                for (let i=0; i<string.length; i++){
                        if (string[i] == a_stack[a_stack.length-1]){
                                a_stack.pop();
                                count++;
                        }
                }
                return count;
        }

        $("#succ").click(function (event) {
                event.preventDefault();
                var user = $("#r_user").val();
                var pass = $("#r_pass").val();
                var cpass = $("#r_cpass").val();
                var fname = $("#r_fname").val();
                var mname = $("#r_mname").val();
                var lname = $("#r_lname").val();
                var gender = $("#r_gender").val();
                var phone = $("#r_phone").val();
                var email = $("#r_email").val();
                var addr1 = $("#r_addr1").val();
                var addr2 = $("#r_addr2").val();
                var city = $("#r_city").val();
                var state = $("#r_state").val();
                var zip = $("#r_zip").val();

                var is_synerd = $("#r_is_synerd").val();
                var country = $("#r_country").val();
                var dob = $("#r_dob").val();
                var org = $("#r_org").val();
                var comp = $("#r_comp").val();

                var upper = chk_upper(pass);
                var num = chk_num(pass);
                var v_email = chk_email(email);

                if ( is_synerd == "yes" && (user == "" || pass == "" || cpass == "" || fname == "" || lname == "" || gender == "" || email == "" || phone == "" || addr1 == "" || city == "" || state == "" || zip == "" || country == "" || dob == "" || org == "" || comp == "")) {
                        alert("Please fill out all fields and SynerD only fields.");
                }
                else if ( is_synerd == "no" && (user == "" || pass == "" || cpass == "" || fname == "" || lname == "" || gender == "" || email == "" || phone == "" || addr1 == "" || city == "" || state == "" || zip == "")) {
                        alert("Please fill out all fields.");
                }
                else if(v_email < 1){
                        alert("Please enter a valid email.")
                }
                else if (pass !== cpass) {
                        alert("Passwords need to match.");
                }
                else if (pass.length < 8) {
                        alert("Password needs to be at least 8 characters long.")
                }
                else if (upper < 1 ) {
                        alert("Password needs at least 1 Uppercase ");
                }
                else if (num < 1 ) {
                        alert("Password needs at least 1 Number ");
                }
                else {
                        alert("Submission Success!!!");
                }


        });

});