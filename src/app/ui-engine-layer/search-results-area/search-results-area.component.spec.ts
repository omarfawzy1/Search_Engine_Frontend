import { ComponentFixture, TestBed } from '@angular/core/testing';

import { SearchResultsAreaComponent } from './search-results-area.component';

describe('SearchResultsAreaComponent', () => {
  let component: SearchResultsAreaComponent;
  let fixture: ComponentFixture<SearchResultsAreaComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ SearchResultsAreaComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(SearchResultsAreaComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
