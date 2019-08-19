$(document).ready(function($) {

    // $(document.body).on('submit', '.login_form', function(e) {
    //     e.preventDefault();
    //     let $this = $(this);
    //
    //     $.ajax({
    //         url: LAS.Utils.relative_url_root + '/users/sign_in',
    //         type: 'POST',
    //         data: {
    //             email: $('#user_email').val(),
    //             password: $('#user_password').val(),
    //         },
    //         dataType: 'script',
    //         success: function(data) {
    //             data = JSON.parse(data);
    //             const $err_block = $('#new_session_errors');
    //             $err_block.html();
    //
    //             if (data.error_message) {
    //                 $err_block.addClass('alert alert-warning')
    //                     .html(`<p>${data.error_message}</p>`)
    //             }
    //
    //         }
    //     });
    // })
});