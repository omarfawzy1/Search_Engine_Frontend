import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { SearchBarComponent } from './search-bar/search-bar.component';
import { SearchResultsAreaComponent } from './search-results-area/search-results-area.component';
import { SearchButtonComponent } from './search-button/search-button.component';



@NgModule({
  declarations: [
    SearchBarComponent,
    SearchResultsAreaComponent,
    SearchButtonComponent
  ],
  imports: [
    CommonModule
  ]
})
export class UIEngineLayerModule { }
