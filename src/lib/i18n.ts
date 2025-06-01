import { derived } from 'svelte/store';
import { language, type Language } from './stores/language';
import { translations } from './translations';

export const t = derived(
	language,
	($language) => (key: keyof typeof translations.fr) => {
		return translations[$language][key] || translations.fr[key];
	}
);

export { language };