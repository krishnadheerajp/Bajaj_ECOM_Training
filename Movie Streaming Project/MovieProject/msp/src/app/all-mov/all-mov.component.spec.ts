import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AllMovComponent } from './all-mov.component';

describe('AllMovComponent', () => {
  let component: AllMovComponent;
  let fixture: ComponentFixture<AllMovComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ AllMovComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(AllMovComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
