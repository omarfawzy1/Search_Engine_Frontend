import { ComponentFixture, TestBed } from '@angular/core/testing';

import { QueryFormatValidationComponent } from './query-format-validation.component';

describe('QueryFormatValidationComponent', () => {
  let component: QueryFormatValidationComponent;
  let fixture: ComponentFixture<QueryFormatValidationComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ QueryFormatValidationComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(QueryFormatValidationComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
