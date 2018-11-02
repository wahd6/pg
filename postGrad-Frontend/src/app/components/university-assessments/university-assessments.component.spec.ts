import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { UniversityAssessmentsComponent } from './university-assessments.component';

describe('UniversityAssessmentsComponent', () => {
  let component: UniversityAssessmentsComponent;
  let fixture: ComponentFixture<UniversityAssessmentsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ UniversityAssessmentsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(UniversityAssessmentsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
