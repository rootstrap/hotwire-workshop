import { Controller } from 'stimulus';

export default class extends Controller {
  static targets = ['chatRoom', 'skeletonLoader']

  showSearchLoader() {
    this.chatRoomTargets.forEach((chatRoom) => chatRoom.classList.add('hidden'));
    this.skeletonLoaderTargets.forEach((skeletonLoader) => skeletonLoader.classList.remove('hidden'));
  }
}
