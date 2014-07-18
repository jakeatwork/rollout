# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
        $('#clients').dataTable
          sPaginationType: "bootstrap"
          bJQueryUI: true
          bProcessing: true
          bServerSide: true
          sAjaxSource: $('#clients').data('source')
