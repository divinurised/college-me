import { GetServerSideProps } from 'next';
import { useEffect, useState } from 'react';
import styles from './styles.module.scss';

import PostCard from './PostCard';
import Link from 'next/link';

export default function Posts({ posts }) {
	return (
		<div className={styles.container}>
			{posts.map((post) => (
				<div className={styles.card} key={post.id}>
					<Link href={`/posts/${post.id}`}>
						<a>
							<h2>{post.name}</h2>
							<p>{post.body}</p>
						</a>
					</Link>
				</div>
			))}
		</div>
	);
}

export async function getServerSideProps() {
	const response = await fetch('https://jsonplaceholder.typicode.com/comments');
	const posts = await response.json();
	return {
		props: {
			posts,
		},
	};
}
