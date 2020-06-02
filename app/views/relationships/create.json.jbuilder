$("#follow_form").html("<%= escape_javascript(render('users/unfollow')) %>");

$("#follow-count").html("<%= escape_javascript(render('users/follow_count')) %>");
