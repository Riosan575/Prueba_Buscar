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



