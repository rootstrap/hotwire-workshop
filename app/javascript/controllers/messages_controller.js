import { Controller } from 'stimulus';

export default class extends Controller {
  static targets = ['messageField', 'sendButton', 'sendIcon']

  toggleSendButtonState() {
    if (this.messageFieldTarget.value !== '') {
      this.sendButtonTarget.disabled = false;
      this.sendButtonTarget.classList.add('bg-indigo-500', 'hover:bg-indigo-600');
      this.sendButtonTarget.classList.replace('cursor-default', 'cursor-pointer');
      this.sendIconTarget.setAttribute('fill', 'white');
    } else {
      this.sendButtonTarget.disabled = true;
      this.sendButtonTarget.classList.remove('bg-indigo-500', 'hover:bg-indigo-600');
      this.sendButtonTarget.classList.replace('cursor-pointer', 'cursor-default');
      this.sendIconTarget.setAttribute('fill', 'gray');
    }
  }

  sendMessage(event) {
    if (this.messageFieldTarget.value !== '' && event.keyCode === 13) {
      if (event.shiftKey) {
        event.stopPropagation();
      } else {
        this.element.requestSubmit();
      }
    }
  }
}
