<template>
	<div class="frame">
		<div class="frame-container">
			<img class="frame-photo" :src="`${image.thumbnailUrl}`" />
		</div>
	</div>
</template>

<script lang="ts">
import { Component, Prop, Vue } from 'vue-property-decorator'
import { Image } from '@/types'

@Component
export default class Frame extends Vue {
	@Prop() private image!: Image
}
</script>

<style scoped>
.frame {
	width: 280px;
	height: 157.5px;
	padding: 0;
	margin: 30px;
	/* background-color: white; */
	/* border: solid 10px black; */
	/* box-shadow: 10px 10px 10px #ccc; */

	display: flex;
	align-items: center;
	justify-content: center;
}
.frame-container {
	/* width: 225px;
  height: 150px; */
	width: 280px;
	height: 157.5px;
	background-color: whitesmoke;

	display: flex;
	align-items: center;
	justify-content: center;
}
.frame-photo {
	/* max-width: 195px;
  max-height: 130px; */
	object-fit: contain;
	width: 280px;
	height: 157.5px;
	/* box-shadow: -5px -5px 5px 5px #ccc; */
}
</style>
