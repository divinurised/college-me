import styles from './styles.module.scss';

export default function Post({ post }) {
	return (
		<div className={styles.container}>
			<div className={styles.postHeader}>
				<h1>{post.name}</h1>
				<p className={styles.author}>{post.email}</p>
			</div>
			<div className={styles.postBody}>
				<p>{post.body}</p>
				<p>{post.body}</p>
				<p>{post.body}</p>
				<p>{post.body}</p>
				<p>{post.body}</p>
			</div>
		</div>
	);
}

// export async function getStaticPaths() {
// 	return {
// 		paths: [
// 			{ params: { id: '1' } },
// 			{ params: { id: '2' } },
// 			{ params: { id: '3' } },
// 		],
// 		fallback: false,
// 	};
// }

// export async function getStaticProps({ params }) {
// 	const response = await fetch(
// 		`https://jsonplaceholder.typicode.com/comments/${params.id}`
// 	);
// 	const post = await response.json();
// 	return {
// 		props: {
// 			post,
// 		},
// 		revalidate: 5,
// 	};
// }

export async function getServerSideProps({ params }) {
	const response = await fetch(
		`https://jsonplaceholder.typicode.com/comments/${params.id}`
	);
	const post = await response.json();
	return {
		props: {
			post,
		},
		// revalidate: 5,
	};
}
