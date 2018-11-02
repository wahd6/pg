import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { RouterModule } from '@angular/router';
import { UrlSerializer } from '@angular/router';

import { AngularFontAwesomeModule } from 'angular-font-awesome';

// import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { CreateUserComponent } from './components/create-user/create-user.component';
import { CustomUrlSerializer } from './CustomUrlSerializer';

import { HeaderComponent } from './header/header.component';
import { FooterComponent } from './footer/footer.component';
import { LoginComponent } from './components/login/login.component';
import { ForgotPasswordComponent } from './components/forgot-password/forgot-password.component';
import { MyProfileComponent } from './components/my-profile/my-profile.component';

import { AuthGuard } from './services/auth-guard.service';
import { UniversityAssessmentsComponent } from './components/university-assessments/university-assessments.component';


const ROUTES = [
	{ path: '', redirectTo: 'login', pathMatch: 'full' },
	{ path: 'create-user', component: CreateUserComponent },
	{ path: 'login', component: LoginComponent },
	{ path: 'forgot-password', component: ForgotPasswordComponent },
	// { path: 'my-profile', component: MyProfileComponent },
	{
		path: 'my-profile', children: [
			{ path: '', component: MyProfileComponent },
			{ path: '', component: HeaderComponent, outlet: 'header' },
			{ path: '', component: FooterComponent, outlet: 'footer' }
		], canActivate: [AuthGuard]
	},
	{
		path: 'university-assessments', children: [
			{ path: '', component: UniversityAssessmentsComponent },
			{ path: '', component: HeaderComponent, outlet: 'header' },
			{ path: '', component: FooterComponent, outlet: 'footer' }
		], canActivate: [AuthGuard]
	},
];


@NgModule({
	declarations: [
		AppComponent,
		CreateUserComponent,
		HeaderComponent,
		FooterComponent,
		LoginComponent,
		ForgotPasswordComponent,
		MyProfileComponent,
		UniversityAssessmentsComponent
	],
	imports: [
		AngularFontAwesomeModule,
		BrowserModule,
		// AppRoutingModule,
		RouterModule.forRoot(ROUTES),
	],
	providers: [
		{ provide: UrlSerializer, useClass: CustomUrlSerializer },
		AuthGuard
	],
	bootstrap: [AppComponent]
})
export class AppModule { }
