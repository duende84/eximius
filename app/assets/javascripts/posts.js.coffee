# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $("#post_date").datepicker({
    firstDay: 1,
    changeMonth: true,
    changeYear: true,
    controlType: 'select',
    dateFormat: 'yy-mm-dd',
    minDate: '-1y',
    maxDate: '0',
    dayNamesMin: ['Do', 'Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'Sa'],
    monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
    monthNamesShort: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun', 'Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic']
  });

  $(".wysihtml5").each (i, elem) ->
    $(elem).wysihtml5
      "font-styles": true #Font styling, e.g. h1, h2, etc. Default true
      emphasis: true #Italics, bold, etc. Default true
      lists: true #(Un)ordered lists, e.g. Bullets, Numbers. Default true
      html: false #Button which allows you to edit the generated HTML. Default false
      link: true #Button to insert a link. Default true
      image: true #Button to insert an image. Default true,
      color: true #Button to change color of font
      locale: "es-ES"