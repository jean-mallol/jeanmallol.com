import { writable } from 'svelte/store';
import { browser } from '$app/environment';

export type Language = 'fr' | 'en';

function createLanguageStore() {
	const defaultLang: Language = 'fr';
	
	const { subscribe, set, update } = writable<Language>(defaultLang);

	return {
		subscribe,
		setLanguage: (lang: Language) => {
			set(lang);
			if (browser) {
				localStorage.setItem('language', lang);
			}
		},
		init: () => {
			if (browser) {
				const stored = localStorage.getItem('language') as Language;
				if (stored && (stored === 'fr' || stored === 'en')) {
					set(stored);
				} else {
					const browserLang = navigator.language.toLowerCase();
					const lang = browserLang.startsWith('fr') ? 'fr' : 'en';
					set(lang);
				}
			}
		}
	};
}

export const language = createLanguageStore();