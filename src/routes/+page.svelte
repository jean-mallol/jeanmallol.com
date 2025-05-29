<script lang="ts">
	import SEO from '$lib/components/SEO.svelte';
	import type { PageData } from './$types';
	
	export let data: PageData;
</script>

<SEO title={data.title} description={data.description} />

<main class="min-h-screen bg-white">
	<!-- Hero Section -->
	<section class="bg-gradient-to-br from-blue-50 to-indigo-100 py-20 lg:py-32">
		<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
			<div class="text-center">
				<h1 class="text-4xl md:text-6xl font-bold text-gray-900 mb-6">
					Jean Mallol - <span class="text-primary-600">Expert IA</span> & Formateur
				</h1>
				<p class="text-xl md:text-2xl text-gray-700 mb-8 max-w-4xl mx-auto">
					Accélérez votre transformation IA : Développement de Solutions, Formations Sur-Mesure et Accompagnement Stratégique
				</p>
				<div class="flex flex-col sm:flex-row justify-center gap-4">
					<a href="#contact" class="bg-primary-600 text-white px-8 py-4 rounded-lg font-semibold hover:bg-primary-700 transition-colors">
						Discutons de votre projet
					</a>
					<a href="#services" class="border-2 border-primary-600 text-primary-600 px-8 py-4 rounded-lg font-semibold hover:bg-primary-50 transition-colors">
						Découvrir mes services
					</a>
				</div>
			</div>
		</div>
	</section>

	<!-- About Section -->
	<section id="about" class="py-20 lg:py-32">
		<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
			<div class="lg:grid lg:grid-cols-2 lg:gap-16 items-center">
				<div>
					<h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-6">Qui suis-je ?</h2>
					<div class="prose prose-lg text-gray-700">
						<p>
							Avec plus de 10 ans d'expérience en développement de solutions IA et data et en accompagnement d'entreprises dans leur transformation numérique, j'aide aujourd'hui les organisations à concrétiser leur potentiel grâce à l'intelligence artificielle.
						</p>
						<p>
							Mon expertise s'étend de l'implémentation technique à la formation des équipes, couvrant divers secteurs industriels et de services, avec un accent sur l'efficacité opérationnelle, l'innovation et la génération de valeur.
						</p>
						<p>
							J'ai eu l'opportunité de développer des outils innovants et de former des équipes dans des groupes de premier plan comme <strong>Samsung, Stellantis, Gifi, AFD, Greenpeace</strong>, ainsi que pour des institutions publiques majeures (ex: Tribunaux de Commerce de France).
						</p>
					</div>
				</div>
				<div class="mt-12 lg:mt-0">
					<div class="bg-primary-50 p-8 rounded-2xl">
						<h3 class="text-2xl font-bold text-gray-900 mb-4">Pourquoi l'IA est Cruciale Aujourd'hui ?</h3>
						<p class="text-gray-700 mb-4">
							L'intelligence artificielle, et notamment l'IA générative, n'est plus une prospective lointaine mais un levier de productivité et de croissance immédiat.
						</p>
						<p class="text-gray-700">
							Ne pas maîtriser ces technologies aujourd'hui, c'est risquer de se laisser distancer. L'IA permet d'automatiser, d'analyser, de prédire et de créer à une échelle et une vitesse sans précédent.
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Services Section -->
	<section id="services" class="py-20 lg:py-32 bg-gray-50">
		<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
			<div class="text-center mb-16">
				<h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-6">
					Nos Prestations : Un Accompagnement Complet pour Votre Performance IA
				</h2>
				<p class="text-xl text-gray-700 max-w-3xl mx-auto">
					Une approche intégrée pour vous aider à tirer pleinement parti de l'IA, adaptée à votre contexte et à vos ambitions
				</p>
			</div>

			<div class="grid md:grid-cols-3 gap-8">
				<!-- Service 1 -->
				<div class="bg-white p-8 rounded-2xl shadow-sm hover:shadow-md transition-shadow">
					<div class="w-12 h-12 bg-primary-100 rounded-lg flex items-center justify-center mb-6">
						<svg class="w-6 h-6 text-primary-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
							<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9.75 17L9 20l-1 1h8l-1-1-.75-3M3 13h18M5 17h14a2 2 0 002-2V5a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"></path>
						</svg>
					</div>
					<h3 class="text-xl font-bold text-gray-900 mb-4">Développement & Intégration de Solutions IA Sur-Mesure</h3>
					<ul class="text-gray-700 space-y-2">
						<li>• Prototypage Rapide et PoC</li>
						<li>• Solutions Personnalisées (chatbots, systèmes d'aide à la décision)</li>
						<li>• Intégration aux Systèmes Existants</li>
					</ul>
				</div>

				<!-- Service 2 -->
				<div class="bg-white p-8 rounded-2xl shadow-sm hover:shadow-md transition-shadow">
					<div class="w-12 h-12 bg-primary-100 rounded-lg flex items-center justify-center mb-6">
						<svg class="w-6 h-6 text-primary-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
							<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6.253v13m0-13C10.832 5.477 9.246 5 7.5 5S4.168 5.477 3 6.253v13C4.168 18.477 5.754 18 7.5 18s3.332.477 4.5 1.253m0-13C13.168 5.477 14.754 5 16.5 5c1.746 0 3.332.477 4.5 1.253v13C19.832 18.477 18.246 18 16.5 18c-1.746 0-3.332.477-4.5 1.253"></path>
						</svg>
					</div>
					<h3 class="text-xl font-bold text-gray-900 mb-4">Formations IA Sur-Mesure et Pratiques</h3>
					<ul class="text-gray-700 space-y-2">
						<li>• Montée en Compétence Ciblée</li>
						<li>• Ateliers pratiques ChatGPT et LLMs</li>
						<li>• Formations adaptées à votre secteur</li>
					</ul>
				</div>

				<!-- Service 3 -->
				<div class="bg-white p-8 rounded-2xl shadow-sm hover:shadow-md transition-shadow">
					<div class="w-12 h-12 bg-primary-100 rounded-lg flex items-center justify-center mb-6">
						<svg class="w-6 h-6 text-primary-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
							<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z"></path>
						</svg>
					</div>
					<h3 class="text-xl font-bold text-gray-900 mb-4">Accompagnement Stratégique & Cadrage de Projets IA</h3>
					<ul class="text-gray-700 space-y-2">
						<li>• Diagnostic et Identification d'Opportunités</li>
						<li>• Cadrage de Projets et Feuille de Route</li>
						<li>• Veille et Recommandations</li>
					</ul>
				</div>
			</div>
		</div>
	</section>

	<!-- Benefits Section -->
	<section class="py-20 lg:py-32">
		<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
			<h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-12 text-center">
				Les Bénéfices Concrets pour Votre Entreprise
			</h2>
			<div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
				<div class="text-center">
					<div class="w-16 h-16 bg-green-100 rounded-full flex items-center justify-center mx-auto mb-4">
						<svg class="w-8 h-8 text-green-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
							<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 10V3L4 14h7v7l9-11h-7z"></path>
						</svg>
					</div>
					<h3 class="text-lg font-semibold text-gray-900 mb-2">Productivité Accrue</h3>
					<p class="text-gray-700">Automatisation de tâches répétitives et chronophages</p>
				</div>
				<div class="text-center">
					<div class="w-16 h-16 bg-blue-100 rounded-full flex items-center justify-center mx-auto mb-4">
						<svg class="w-8 h-8 text-blue-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
							<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z"></path>
						</svg>
					</div>
					<h3 class="text-lg font-semibold text-gray-900 mb-2">Optimisation des Fonctions Clés</h3>
					<p class="text-gray-700">Amélioration du marketing, ventes, support client</p>
				</div>
				<div class="text-center">
					<div class="w-16 h-16 bg-purple-100 rounded-full flex items-center justify-center mx-auto mb-4">
						<svg class="w-8 h-8 text-purple-600" fill="none" stroke="currentColor" viewBox="0 0 24 24">
							<path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6V4m0 2a2 2 0 100 4m0-4a2 2 0 110 4m-6 8a2 2 0 100-4m0 4a2 2 0 100 4m0-4v2m0-6V4m6 6v10m6-2a2 2 0 100-4m0 4a2 2 0 100 4m0-4v2m0-6V4"></path>
						</svg>
					</div>
					<h3 class="text-lg font-semibold text-gray-900 mb-2">Innovation Facilitée</h3>
					<p class="text-gray-700">IA générative pour brainstorming et résolution de problèmes</p>
				</div>
			</div>
		</div>
	</section>

	<!-- Testimonials Section -->
	<section class="py-20 lg:py-32 bg-gray-50">
		<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
			<h2 class="text-3xl md:text-4xl font-bold text-gray-900 mb-12 text-center">
				Témoignages de Clients Satisfaits
			</h2>
			<div class="grid md:grid-cols-2 gap-8">
				<div class="bg-white p-8 rounded-2xl shadow-sm">
					<p class="text-gray-700 mb-6 italic">
						"Grâce à la formation et à l'accompagnement pertinent de Jean, nous avons pu déployer un chatbot en moins d'un mois. Cela a permis de réduire notre charge de travail au service client de 40 %, tout en améliorant la satisfaction de nos utilisateurs."
					</p>
					<p class="font-semibold text-gray-900">Responsable Service Client</p>
				</div>
				<div class="bg-white p-8 rounded-2xl shadow-sm">
					<p class="text-gray-700 mb-6 italic">
						"L'expertise de Jean nous a permis de développer un outil d'analyse de données qui a transformé notre approche. Nous traitons désormais des volumes importants, en plusieurs langues, avec une équipe réduite, au service de centaines de collaborateurs."
					</p>
					<p class="font-semibold text-gray-900">Senior Insights Manager, Greenpeace</p>
				</div>
			</div>
		</div>
	</section>

	<!-- Contact Section -->
	<section id="contact" class="py-20 lg:py-32 bg-primary-600">
		<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
			<h2 class="text-3xl md:text-4xl font-bold text-white mb-6">
				Prêt à Transformer Votre Entreprise avec l'IA ?
			</h2>
			<p class="text-xl text-blue-100 mb-8 max-w-3xl mx-auto">
				L'intelligence artificielle est la nouvelle frontière de la productivité. Ensemble, faisons-en un atout majeur de votre stratégie.
			</p>
			<a href="mailto:contact@jeanmallol.com" class="bg-white text-primary-600 px-8 py-4 rounded-lg font-semibold hover:bg-gray-50 transition-colors inline-block">
				Contactez-moi pour une discussion initiale
			</a>
		</div>
	</section>
</main>
