<script lang="ts">
	export let title: string;
	export let description: string;
	export let image: string = '/og-image.jpg';
	export let url: string = 'https://jeanmallol.com';
</script>

<svelte:head>
	<title>{title}</title>
	<meta name="description" content={description} />
	<meta property="og:title" content={title} />
	<meta property="og:description" content={description} />
	<meta property="og:image" content={image} />
	<meta property="og:url" content={url} />
	<meta name="twitter:title" content={title} />
	<meta name="twitter:description" content={description} />
	<meta name="twitter:image" content={image} />
	<link rel="canonical" href={url} />
</svelte:head>