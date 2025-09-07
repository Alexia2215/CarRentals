import { Component, signal } from '@angular/core';
import {MatExpansionModule} from '@angular/material/expansion';
@Component({
  selector: 'app-terms-and-conditions',
  imports: [MatExpansionModule],
  templateUrl: './terms-and-conditions.component.html', 
  styleUrl: './terms-and-conditions.component.css'
})
export class TermsAndConditionsComponent {
  readonly panelOpenState = signal(false);
  items: Array<any> = [];

  constructor() {
    this.items = [
      {
        title: "1.",
        description: "Acceptance of terms "
      },
       {
        title: "2.",
        description: " Eligibility " 
      }
    ]
  }
}
