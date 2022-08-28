import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { StorageComponent } from './storage/storage.component';
import { QueryFormatValidationComponent } from './query-format-validation/query-format-validation.component';
import { HistoryManagerComponent } from './history-manager/history-manager.component';



@NgModule({
  declarations: [
  
    StorageComponent,
       QueryFormatValidationComponent,
       HistoryManagerComponent
  ],
  imports: [
    CommonModule
  ]
})
export class LogicLayerModule { }
