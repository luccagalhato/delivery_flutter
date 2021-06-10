String getErrorString(String code) {
  switch (code) {
    case 'ERROR_WEAK_PASSWORD':
      return 'Weak password.';
    case 'ERROR_INVALID_EMAIL':
      return 'Invalid e-mail.';
    case 'ERROR_EMAIL_ALREADY_IN_USE':
      return 'E-mail already in use.';
    case 'ERROR_INVALID_CREDENTIAL':
      return 'your email is invalid.';
    case 'ERROR_WRONG_PASSWORD':
      return 'Wrong password.';
    case 'ERROR_USER_NOT_FOUND':
      return 'User not found.';
    case 'ERROR_USER_DISABLED':
      return 'This user is disabled.';
    case 'ERROR_TOO_MANY_REQUESTS':
      return 'Too many requests. Try again later.';
    case 'ERROR_OPERATION_NOT_ALLOWED':
      return 'Operation not allowed.';

    default:
      return 'An undefined error has occurred.';
  }
}
