import { ComponentFixture, TestBed } from '@angular/core/testing';

import { SelMovComponent } from './sel-mov.component';

describe('SelMovComponent', () => {
  let component: SelMovComponent;
  let fixture: ComponentFixture<SelMovComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ SelMovComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(SelMovComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
