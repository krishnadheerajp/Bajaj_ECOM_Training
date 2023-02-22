import { ComponentFixture, TestBed } from '@angular/core/testing';

import { LatMovComponent } from './lat-mov.component';

describe('LatMovComponent', () => {
  let component: LatMovComponent;
  let fixture: ComponentFixture<LatMovComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ LatMovComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(LatMovComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
