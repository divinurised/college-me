import { useRouter } from 'next/router';

function Post() {
	const router = useRouter();

	return (
		<div>
			<h1>{router.query.id}</h1>
			<h2></h2>
		</div>
	);
}

export default Post;
