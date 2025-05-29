<script>
	import { onMount } from 'svelte';
	
	export let text = '';
	export let speed = 100;
	
	let displayText = '';
	let currentIndex = 0;
	
	onMount(() => {
		const typeText = () => {
			if (currentIndex < text.length) {
				displayText += text[currentIndex];
				currentIndex++;
				setTimeout(typeText, speed);
			}
		};
		
		// Start typing after a small delay
		setTimeout(typeText, 500);
	});
</script>

<span class="typing-title">
	{displayText}<span class="cursor">|</span>
</span>

<style>
	.typing-title {
		color: #1a1a1a;
		font-weight: 800;
		text-shadow: 2px 2px 4px rgba(0,0,0,0.1);
		display: inline-block;
		position: relative;
	}
	
	.typing-title::after {
		content: '';
		position: absolute;
		bottom: -5px;
		left: 0;
		width: 100%;
		height: 4px;
		background: linear-gradient(90deg, rgb(249, 208, 137), rgb(245, 200, 120));
		border-radius: 2px;
		animation: slideIn 0.5s ease-out 2s both;
	}
	
	.cursor {
		animation: blink 1s infinite;
		color: #f9d089;
		font-weight: 400;
	}
	
	@keyframes blink {
		0%, 50% { opacity: 1; }
		51%, 100% { opacity: 0; }
	}
	
	@keyframes slideIn {
		from { width: 0; }
		to { width: 100%; }
	}
</style>