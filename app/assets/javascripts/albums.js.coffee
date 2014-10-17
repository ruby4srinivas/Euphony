jQuery ->
# when form loads genretype select box will be hidden
  #$('#album_id').parent().hide()
  $('.gentype').parent().hide()
  # get all the genretypes to variable gtypes
  gtypes = $('.gentype').html();
  console.log(gtypes)
  # triggers the genrelanguage select box
  $('#glanguage').change ->

    #get the selected language name from language select box
    glanguage = $('#glanguage :selected').text();

    #if language have any special characters fix them
    escaped_glanguage = glanguage.replace(/([ #;&,.+*~\':"!^$[]()=>|\/@])/g, '\$1')
    # based on the language, filter the options in genere types
    options = $(gtypes).filter("optgroup[label='#{escaped_glanguage}']").html()
    # if data exists for genere types
    if options
      #By default genere type will selct the first value, to avoid that
      # add a blank value here
      options = ("<option value=0>select</option>" + options)
      #Add all the options of generetype to select box for the choosen language
      $('.gentype').html(options)
      # Now genere type have few values , so show the select box
      $('.gentype').parent().show()
    else
      # genere type select box do not have any values. so make it empty
      $('.gentype').empty()
      # and hide it.
      $('.gentype').parent().hide()


