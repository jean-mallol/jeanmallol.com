import type { PageLoad } from './$types';
import { get } from 'svelte/store';
import { language } from '$lib/stores/language';

export const load: PageLoad = () => {
	const currentLang = get(language);
	
	const seoData = {
		fr: {
			title: 'Jean Mallol - Expert IA & Formateur',
			description: 'Accélérez votre transformation IA : Développement de Solutions, Formations Sur-Mesure et Accompagnement Stratégique'
		},
		en: {
			title: 'Jean Mallol - AI Expert & Trainer',
			description: 'Accelerate your AI transformation: Solution Development, Custom Training and Strategic Support'
		}
	};
	
	return seoData[currentLang] || seoData.fr;
};