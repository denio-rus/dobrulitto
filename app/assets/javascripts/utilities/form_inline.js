document.addEventListener('turbolinks:load', function() {
  var controls = document.querySelectorAll('.form-inline-link'); 
  
  if (controls.length) {
    for (var i = 0; i <controls.length; i++) {
      controls[i].addEventListener('click', formInlineLinkHandler)
    }
  }
  
  var errors = document.querySelector('.resource-errors')
  if (errors) {
    var resourceId = errors.dataset.resourceId;
    formInlineHandler(resourceId);
  }
})

function formInlineLinkHandler(event) {
  event.preventDefault();
  var genreId = this.dataset.genreId;
  formInlineHandler(genreId);
};

function formInlineHandler(genreId) {
  var link = document.querySelector('.form-inline-link[data-genre-id="' + genreId + '"]');
  var genreTitle = document.querySelector('.genre-title[data-genre-id="' + genreId + '"]');
  var formInline = document.querySelector('.form-inline[data-genre-id="' + genreId + '"]');

  if (formInline.classList.contains('hide')) {
    genreTitle.classList.add('hide');
    formInline.classList.remove('hide');
    link.textContent = 'cancel'
  } else {
    genreTitle.classList.remove('hide');
    formInline.classList.add('hide');
    link.textContent = 'edit'
  }
}