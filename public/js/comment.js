const deleteIcons = document.querySelectorAll('.comment-icon--delete');
const deleteCommentModal = document.getElementById('deleteCommentModal');
const closeModalButton = document.getElementById('closeModal');
const confirmDeleteButton = document.getElementById('confirmDelete');
const cancelDeleteButton = document.getElementById('cancelDelete');

deleteIcons.forEach((icon) => {
  icon.addEventListener('click', (event) => {
    const commentId = event.target.dataset.id;

    openDeleteCommentModal(commentId);
  });
});

closeModalButton.addEventListener('click', () => {
  deleteCommentModal.classList.remove('is-active');
});

function openDeleteCommentModal(commentId) {
  console.log('clic');
  deleteCommentModal.classList.add('is-active');
  confirmDeleteButton.addEventListener('click', async () => {
    deleteComment(commentId);
  });
  cancelDeleteButton.addEventListener('click', async () => {
    deleteCommentModal.classList.remove('is-active');
  });
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
