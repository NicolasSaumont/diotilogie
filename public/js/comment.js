const updateIcons = document.querySelectorAll('.comment-icon--update');
const deleteIcons = document.querySelectorAll('.comment-icon--delete');
const updateCommentModal = document.getElementById('updateCommentModal');
const deleteCommentModal = document.getElementById('deleteCommentModal');
const closeModalButton = document.querySelectorAll('.closeModal');
const confirmUpdateButton = document.getElementById('confirmUpdate');
const confirmDeleteButton = document.getElementById('confirmDelete');
const cancelUpdateButton = document.getElementById('cancelUpdate');
const cancelDeleteButton = document.getElementById('cancelDelete');

updateIcons.forEach((icon) => {
  icon.addEventListener('click', (event) => {
    const commentId = event.target.dataset.id;

    openUpdateCommentModal(commentId);
  });
});

deleteIcons.forEach((icon) => {
  icon.addEventListener('click', (event) => {
    const commentId = event.target.dataset.id;

    openDeleteCommentModal(commentId);
  });
});

closeModalButton.forEach((button) => {
  button.addEventListener('click', (event) => {
    event.preventDefault();
    updateCommentModal.classList.remove('is-active');
    deleteCommentModal.classList.remove('is-active');
  });
});

function openUpdateCommentModal(commentId) {
  updateCommentModal.classList.add('is-active');

  // Intégration de la valeur du commentaire dans l'input de la modale
  const commentToUpdate = document.querySelector(`[data-id="${commentId}"]`);
  const commentDescription = commentToUpdate.querySelector(
    '[slot="comment-description"]'
  ).textContent;

  const commentInput = updateCommentModal.querySelector('#comment-description');
  commentInput.value = commentDescription;

  confirmUpdateButton.addEventListener('click', async (event) => {
    event.preventDefault();
    const addCommentForm = document.getElementById('updateCommentModal');
    const formData = new FormData(addCommentForm);
    const formObject = Object.fromEntries(formData);
    updateComment(commentId, formObject);
  });
  cancelUpdateButton.addEventListener('click', async (event) => {
    event.preventDefault();
    updateCommentModal.classList.remove('is-active');
  });
}

function openDeleteCommentModal(commentId) {
  deleteCommentModal.classList.add('is-active');
  confirmDeleteButton.addEventListener('click', async () => {
    deleteComment(commentId);
  });
  cancelDeleteButton.addEventListener('click', async () => {
    deleteCommentModal.classList.remove('is-active');
  });
}

async function updateComment(commentId, formObject) {
  const bodyJSON = JSON.stringify(formObject);

  try {
    const response = await fetch(`/comments/${commentId}`, {
      method: 'PATCH',
      headers: {
        'Content-type': 'application/json; charset=UTF-8',
      },
      body: bodyJSON,
    });

    if (response.ok) {
      const updateComment = await response.json();

      updateCommentToDom(updateComment);
    } else {
      alert('Oops petit soucis');
    }
  } catch (error) {
    console.trace(error);
  }
  updateCommentModal.classList.remove('is-active');
}

function updateCommentToDom(commentData) {
  const commentToUpdate = document.querySelector(
    `[data-id="${commentData.id}"]`
  );

  commentToUpdate.querySelector('[slot="comment-description"]').textContent =
    commentData.description;
}

async function deleteComment(commentId) {
  try {
    const response = await fetch(`/comments/${commentId}`, {
      method: 'DELETE',
    });

    if (response.status === 204) {
      const commentDeleted = document.getElementById(`comment-${commentId}`);

      if (commentDeleted) {
        commentDeleted.remove();
      } else {
        console.error('Commentaire introuvable dans le DOM.');
      }
    } else {
      console.error('Erreur lors de la suppression du commentaire.');
    }
  } catch (error) {
    console.error('Erreur lors de la suppression du commentaire:', error);
  }

  deleteCommentModal.classList.remove('is-active');
}
