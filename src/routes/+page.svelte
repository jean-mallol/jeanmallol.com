<script lang="ts">
	import { onMount } from 'svelte';
	import SEO from '$lib/components/SEO.svelte';
	import FadeIn from '$lib/components/FadeIn.svelte';
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
			<p class="subtitle">Expert IA & Formateur - Accélérez votre transformation IA : Développement de Solutions, Formations Sur-Mesure et Accompagnement Stratégique</p>
			<a href="#contact" class="cta-button">Commencer votre transformation IA</a>
		</div>
	</div>
</header>

<nav>
	<div class="container">
		<ul>
			<li><a href="#about">À propos</a></li>
			<li><a href="#services">Services</a></li>
			<li><a href="#benefits">Bénéfices</a></li>
			<li><a href="#testimonials">Témoignages</a></li>
			<li><a href="#contact">Contact</a></li>
		</ul>
	</div>
</nav>

<section id="about" class="about">
	<div class="container">
		<h2 class="section-title fade-in">Qui suis-je ?</h2>
		<div class="about-content">
			<div class="about-text fade-in">
				<p>Avec plus de 10 ans d'expérience en développement de solutions IA et data et en accompagnement d'entreprises dans leur transformation numérique, j'aide aujourd'hui les organisations à concrétiser leur potentiel grâce à l'intelligence artificielle.</p>
				
				<p>Mon expertise s'étend de l'implémentation technique à la formation des équipes, couvrant divers secteurs industriels et de services, avec un accent sur l'efficacité opérationnelle, l'innovation et la génération de valeur.</p>
			</div>
			<div class="stats fade-in">
				<div class="stat-item">
					<div class="stat-number">10+</div>
					<div class="stat-label">Années d'expérience</div>
				</div>
				<div class="stat-item">
					<div class="stat-number">100+</div>
					<div class="stat-label">Projets réalisés</div>
				</div>
				<div class="stat-item">
					<div class="stat-number">50+</div>
					<div class="stat-label">Entreprises accompagnées</div>
				</div>
			</div>
		</div>
		<div class="fade-in" style="margin-top: 60px;">
			<p style="font-size: 1.1rem; text-align: center; color: #666;">J'ai eu l'opportunité de développer des outils innovants et de former des équipes dans des groupes de premier plan comme <strong>Samsung, Stellantis, AFD, Greenpeace, Blablacar</strong>, ainsi que pour des institutions publiques majeures comme les Tribunaux de Commerce de France.</p>
		</div>
	</div>
</section>

<section id="services" class="services">
	<div class="container">
		<h2 class="section-title fade-in">Nos Prestations</h2>
		<div class="services-grid">
			<div class="service-card fade-in card-3d">
				<div class="service-icon">⚡</div>
				<h3 class="service-title">Développement & Intégration de Solutions IA</h3>
				<p class="service-description">Prototypage rapide, développement de solutions personnalisées (chatbots, systèmes d'aide à la décision, automatisation) et intégration aux systèmes existants.</p>
			</div>
			<div class="service-card fade-in card-3d">
				<div class="service-icon">🎓</div>
				<h3 class="service-title">Formations IA Sur-Mesure</h3>
				<p class="service-description">Montée en compétence ciblée avec des formations 100% adaptées à votre secteur, vos équipes et vos objectifs spécifiques. Approche pragmatique avec ateliers pratiques.</p>
			</div>
			<div class="service-card fade-in card-3d">
				<div class="service-icon">🎯</div>
				<h3 class="service-title">Accompagnement Stratégique</h3>
				<p class="service-description">Diagnostic, identification d'opportunités, cadrage de projets et feuille de route. Conseils sur les évolutions technologiques et meilleures pratiques.</p>
			</div>
		</div>
	</div>
</section>

<section id="benefits" class="benefits">
	<div class="container">
		<h2 class="section-title fade-in">Les Bénéfices Concrets</h2>
		<div class="benefits-grid">
			<div class="benefit-item fade-in">
				<h4 class="benefit-title">Productivité Accrue</h4>
				<p>Automatisation de tâches répétitives et chronophages, libérant vos équipes pour des missions à plus forte valeur ajoutée.</p>
			</div>
			<div class="benefit-item fade-in">
				<h4 class="benefit-title">Optimisation des Fonctions Clés</h4>
				<p>Amélioration significative de la performance dans les opérations client, le marketing, l'ingénierie logicielle et la R&D.</p>
			</div>
			<div class="benefit-item fade-in">
				<h4 class="benefit-title">Création de Contenu Optimisée</h4>
				<p>Génération rapide de rapports, emails, documents marketing et contenus techniques de qualité.</p>
			</div>
			<div class="benefit-item fade-in">
				<h4 class="benefit-title">Interactions Client Améliorées</h4>
				<p>Assistants virtuels sophistiqués et analyse fine des retours clients pour une expérience optimisée.</p>
			</div>
			<div class="benefit-item fade-in">
				<h4 class="benefit-title">Innovation Facilitée</h4>
				<p>Utilisation de l'IA générative pour le brainstorming et la résolution de problèmes complexes.</p>
			</div>
			<div class="benefit-item fade-in">
				<h4 class="benefit-title">Knowledge Management Intelligent</h4>
				<p>Transformation de vos données en insights actionnables et systèmes de gestion des connaissances dynamiques.</p>
			</div>
		</div>
	</div>
</section>

<section id="testimonials" class="testimonials">
	<div class="container">
		<h2 class="section-title fade-in">Témoignages Clients</h2>
		<div class="testimonial-grid">
			<div class="testimonial fade-in">
				<p class="testimonial-text">Grâce à la formation et à son accompagnement pertinent, nous avons pu déployer un chatbot en moins d'un mois. Cela a permis de réduire notre charge de travail au service client de 40%, tout en améliorant la satisfaction de nos utilisateurs.</p>
				<p class="testimonial-author">— Responsable Service Client</p>
			</div>
			<div class="testimonial fade-in">
				<p class="testimonial-text">L'expertise de Jean nous a permis de développer un outil d'analyse de données qui a transformé notre approche. Nous traitons désormais des volumes importants, en plusieurs langues, avec une équipe réduite, au service de centaines de collaborateurs.</p>
				<p class="testimonial-author">— Senior Insights Manager, Greenpeace</p>
			</div>
		</div>
	</div>
</section>

<section id="contact" class="contact">
	<div class="container">
		<h2 class="section-title fade-in">Prêt à Transformer Votre Entreprise ?</h2>
		<div class="contact-content fade-in">
			<p class="contact-text">L'intelligence artificielle est la nouvelle frontière de la productivité. Ensemble, faisons-en un atout majeur de votre stratégie.</p>
			<a href="mailto:jean.ml.solutions@gmail.com" class="contact-button">Discutons de votre projet</a>
		</div>
	</div>
</section>

<footer>
	<div class="container">
		<p>&copy; 2025 Jean Mallol - Expert IA & Formateur. Tous droits réservés.</p>
	</div>
</footer>
