<script lang="ts">
	import '../app.css';
	import { onMount } from 'svelte';
	import { language } from '$lib/stores/language';

	onMount(() => {
		language.init();
	});
</script>

<slot />