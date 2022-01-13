var mostrar = $.ajax({
    url: '/home/privacy',
    type: 'GET'
});

mostrar.done(function (resp) {
    $('#mostrar').html(resp);
});

var $btnBuscar = $('.btnBuscar');
$btnBuscar.click(function (e) {

    e.preventDefault();



    var buscar = $.ajax({
        url: '/home/privacy?query=' + $('#search').val(),
        type: 'GET'
    });
    buscar.done(function (response) {
        $('#mostrar').html(response);
    });

    $('#search').val(null);
});


//var $btnMostrar = $('.btnMostrar');

//$btnMostrar.click(function () {


//    var $this = $(this);

//    $this.attr('hidden', 'hidden');


//    var request = jQuery.ajax({
//        url: '/home/replycomment',
//        type: 'GET'
//    });

//    request.done(function (element) {

//        var $ver = $this.closest('.card').find('.mosCom');

//        $ver.html(element);
//    });    
//});



//$('#btnMostrar').click(function () {
//    $('.verText').show();
//});


//$('.btnResp').click(function () {
//    $('.btnResp').attr('hidden', 'hidden');
//});