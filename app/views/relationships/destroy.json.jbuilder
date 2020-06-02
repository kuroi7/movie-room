$("#follow_form").html("<%= escape_javascript(render('users/follow')) %>");

$("#follow-count").html("<%= escape_javascript(render('users/follow_count')) %>");
