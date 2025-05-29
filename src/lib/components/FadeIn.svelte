<script lang="ts">
	import { onMount } from 'svelte';

	let element: HTMLElement;
	let isVisible = false;

	onMount(() => {
		const observer = new IntersectionObserver(
			(entries) => {
				if (entries[0].isIntersecting) {
					isVisible = true;
				}
			},
			{ threshold: 0.1, rootMargin: '0px 0px -50px 0px' }
		);

		if (element) {
			observer.observe(element);
		}

		return () => {
			if (element) {
				observer.unobserve(element);
			}
		};
	});
</script>

<div bind:this={element} class="fade-in" class:visible={isVisible}>
	<slot />
</div>