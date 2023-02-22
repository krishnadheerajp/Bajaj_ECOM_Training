import { ComponentFixture, TestBed } from '@angular/core/testing';

import { SearchMovComponent } from './search-mov.component';

describe('SearchMovComponent', () => {
  let component: SearchMovComponent;
  let fixture: ComponentFixture<SearchMovComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ SearchMovComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(SearchMovComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
