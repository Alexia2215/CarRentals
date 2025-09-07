import { Component } from '@angular/core';
import {ConfigurationService} from '../../services/configuration.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-footer',
  imports: [],
  templateUrl: './footer.component.html',
  standalone: true,
  styleUrl: './footer.component.css'
})
export class FooterComponent {
  author: string = '';
  group: string = '';
  projectTitle: string = '';

  constructor(private configurationService: ConfigurationService, private router:Router) {
    this.author = this.configurationService.footerConfig().author;
    this.group = this.configurationService.footerConfig().group;
    this.projectTitle = this.configurationService.footerConfig().projectTitle;
  }


  public navigateTo(path:string){
    this.router.navigateByUrl(path)
  }
}
