<script lang="ts">
	import { onMount } from 'svelte';
	import SEO from '$lib/components/SEO.svelte';
	import FadeIn from '$lib/components/FadeIn.svelte';
	import LanguageSelector from '$lib/components/LanguageSelector.svelte';
	import ServiceAiIcon from '$lib/components/icons/ServiceAiIcon.svelte';
	import ServiceTrainingIcon from '$lib/components/icons/ServiceTrainingIcon.svelte';
	import ServiceConsultingIcon from '$lib/components/icons/ServiceConsultingIcon.svelte';
	import { t } from '$lib/i18n';
	import type { PageData } from './$types';
	
	export let data: PageData;

	onMount(() => {
		// Smooth scrolling for anchor links
		document.querySelectorAll('a[href^="#"]').forEach(anchor => {
			anchor.addEventListener('click', function (e) {
				e.preventDefault();
				const target = document.querySelector(this.getAttribute('href'));
				if (target) {
					target.scrollIntoView({ behavior: 'smooth' });
				}
			});
		});

		// Fade in animation on scroll
		const observerOptions = {
			threshold: 0.1,
			rootMargin: '0px 0px -50px 0px'
		};

		const observer = new IntersectionObserver((entries) => {
			entries.forEach(entry => {
				if (entry.isIntersecting) {
					entry.target.classList.add('visible');
				}
			});
		}, observerOptions);

		document.querySelectorAll('.fade-in').forEach(el => {
			observer.observe(el);
		});

		// Subtle parallax effect for header
		window.addEventListener('scroll', () => {
			const scrolled = window.pageYOffset;
			
			const header = document.querySelector('header');
			if (header && scrolled < window.innerHeight) {
				header.style.transform = `translateY(${scrolled * 0.2}px)`;
			}
		});
	});
</script>

<SEO title={data.title} description={data.description} />

<header>
	<div class="container">
		<div class="hero">
			<h1>Jean Mallol</h1>
			<p class="subtitle">{$t('heroSubtitle')}</p>
			<a href="#contact" class="cta-button">{$t('heroCta')}</a>
		</div>
	</div>
</header>

<nav>
	<div class="container nav-container">
		<ul>
			<li><a href="#about">{$t('navAbout')}</a></li>
			<li><a href="#services">{$t('navServices')}</a></li>
			<li><a href="#benefits">{$t('navBenefits')}</a></li>
			<li><a href="#testimonials">{$t('navTestimonials')}</a></li>
			<li><a href="#contact">{$t('navContact')}</a></li>
		</ul>
		<LanguageSelector />
	</div>
</nav>

<section id="about" class="about">
	<div class="container">
		<h2 class="section-title fade-in">{$t('aboutTitle')}</h2>
		<div class="about-content">
			<div class="about-text fade-in">
				<p>{$t('aboutText1')}</p>
				
				<p>{$t('aboutText2')}</p>
			</div>
			<div class="stats fade-in">
				<div class="stat-item">
					<div class="stat-number">10+</div>
					<div class="stat-label">{$t('aboutExperience')}</div>
				</div>
				<div class="stat-item">
					<div class="stat-number">100+</div>
					<div class="stat-label">{$t('aboutProjects')}</div>
				</div>
				<div class="stat-item">
					<div class="stat-number">50+</div>
					<div class="stat-label">{$t('aboutCompanies')}</div>
				</div>
			</div>
		</div>
		<div class="fade-in" style="margin-top: 60px;">
			<p style="font-size: 1.1rem; text-align: center; color: #666;">{@html $t('aboutClientsText')}</p>
		</div>
	</div>
</section>

<section id="services" class="services">
	<div class="container">
		<h2 class="section-title fade-in">{$t('servicesTitle')}</h2>
		<div class="services-grid">
			<div class="service-card fade-in card-3d">
				<div class="service-icon">
					<ServiceAiIcon />
				</div>
				<h3 class="service-title">{$t('serviceAiTitle')}</h3>
				<p class="service-description">{$t('serviceAiDesc')}</p>
			</div>
			<div class="service-card fade-in card-3d">
				<div class="service-icon">
					<ServiceTrainingIcon />
				</div>
				<h3 class="service-title">{$t('serviceTrainingTitle')}</h3>
				<p class="service-description">{$t('serviceTrainingDesc')}</p>
			</div>
			<div class="service-card fade-in card-3d">
				<div class="service-icon">
					<ServiceConsultingIcon />
				</div>
				<h3 class="service-title">{$t('serviceConsultingTitle')}</h3>
				<p class="service-description">{$t('serviceConsultingDesc')}</p>
			</div>
		</div>
	</div>
</section>

<section id="benefits" class="benefits">
	<div class="container">
		<h2 class="section-title fade-in">{$t('benefitsTitle')}</h2>
		<div class="benefits-grid">
			<div class="benefit-item fade-in">
				<h4 class="benefit-title">{$t('benefitProductivityTitle')}</h4>
				<p>{$t('benefitProductivityDesc')}</p>
			</div>
			<div class="benefit-item fade-in">
				<h4 class="benefit-title">{$t('benefitOptimizationTitle')}</h4>
				<p>{$t('benefitOptimizationDesc')}</p>
			</div>
			<div class="benefit-item fade-in">
				<h4 class="benefit-title">{$t('benefitContentTitle')}</h4>
				<p>{$t('benefitContentDesc')}</p>
			</div>
			<div class="benefit-item fade-in">
				<h4 class="benefit-title">{$t('benefitInteractionTitle')}</h4>
				<p>{$t('benefitInteractionDesc')}</p>
			</div>
			<div class="benefit-item fade-in">
				<h4 class="benefit-title">{$t('benefitInnovationTitle')}</h4>
				<p>{$t('benefitInnovationDesc')}</p>
			</div>
			<div class="benefit-item fade-in">
				<h4 class="benefit-title">{$t('benefitKnowledgeTitle')}</h4>
				<p>{$t('benefitKnowledgeDesc')}</p>
			</div>
		</div>
	</div>
</section>

<section id="testimonials" class="testimonials">
	<div class="container">
		<h2 class="section-title fade-in">{$t('testimonialsTitle')}</h2>
		<div class="testimonial-grid">
			<div class="testimonial fade-in">
				<p class="testimonial-text">{$t('testimonial1')}</p>
				<p class="testimonial-author">{$t('testimonial1Author')}</p>
			</div>
			<div class="testimonial fade-in">
				<p class="testimonial-text">{$t('testimonial2')}</p>
				<p class="testimonial-author">{$t('testimonial2Author')}</p>
			</div>
		</div>
	</div>
</section>

<section id="contact" class="contact">
	<div class="container">
		<h2 class="section-title fade-in">{$t('contactTitle')}</h2>
		<div class="contact-content fade-in">
			<p class="contact-text">{$t('contactText')}</p>
			<a href="mailto:jean.ml.solutions@gmail.com" class="contact-button">{$t('contactButton')}</a>
		</div>
	</div>
</section>

<footer>
	<div class="container">
		<p>{$t('footerText')}</p>
	</div>
</footer>
