import {Injectable} from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class ConfigurationService {

  constructor() {
  }

  public footerConfig() {
    return {
      author: 'Bostan Alexia',
      group: 'JavaRemoteRo78',
      projectTitle: 'Rent a car'
    }
  }

}
