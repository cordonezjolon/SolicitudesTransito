console.log('Se inicializan objetos javascritp Master Interna')
$(document).ready(function () {
    inicializarTabla('#dataTable');
});


function inicializarTabla(nombretabla) {
    try {
       // $.fn.dataTable.moment('DD/MM/YYYY HH:mm');
        $(nombretabla).DataTable({
            "order": [],
            "columnDefs": [{ "targets": 1, "orderDataType": "date-time" }]

        });
    }
    catch (error) {
        console.log('Sin registros en tabla ' + error)
    }
};

