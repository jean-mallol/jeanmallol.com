<script lang="ts">
	import { language, type Language } from '../stores/language';

	function handleLanguageChange(lang: Language) {
		language.setLanguage(lang);
	}
</script>

<div class="language-selector">
	<button 
		class="lang-btn" 
		class:active={$language === 'fr'}
		on:click={() => handleLanguageChange('fr')}
	>
		FR
	</button>
	<span class="separator">|</span>
	<button 
		class="lang-btn" 
		class:active={$language === 'en'}
		on:click={() => handleLanguageChange('en')}
	>
		EN
	</button>
</div>

<style>
	.language-selector {
		display: flex;
		align-items: center;
		gap: 8px;
		margin-left: auto;
		background: rgba(255, 255, 255, 0.95);
		padding: 8px 16px;
		border-radius: 25px;
		backdrop-filter: blur(10px);
		box-shadow: 0 2px 15px rgba(0, 0, 0, 0.08);
		border: 1px solid rgba(249, 208, 137, 0.3);
	}

	.lang-btn {
		background: none;
		border: none;
		font-size: 14px;
		font-weight: 500;
		color: #1a1a1a;
		cursor: pointer;
		transition: all 0.3s ease;
		padding: 6px 12px;
		border-radius: 20px;
		position: relative;
	}

	.lang-btn:hover {
		background: rgba(249, 208, 137, 0.1);
		transform: translateY(-1px);
	}

	.lang-btn.active {
		background: linear-gradient(135deg, rgb(249, 208, 137), rgb(245, 200, 120));
		color: #1a1a1a;
		font-weight: 600;
		box-shadow: 0 2px 8px rgba(249, 208, 137, 0.3);
	}

	.separator {
		color: rgba(26, 26, 26, 0.3);
		font-size: 12px;
		margin: 0 4px;
	}

	@media (max-width: 768px) {
		.language-selector {
			padding: 6px 12px;
		}
		
		.lang-btn {
			font-size: 12px;
			padding: 4px 8px;
		}
	}
</style>