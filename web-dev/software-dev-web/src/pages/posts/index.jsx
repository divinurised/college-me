import { GetServerSideProps } from 'next';
import { useEffect, useState } from 'react';
import styles from './styles.module.scss';

import Link from 'next/link';
import PostCard from '../../components/PostCard';

export default function Posts({ posts }) {
	return (
		<div className={styles.container}>
			{posts.map((post) => (
				<PostCard post={post} key={post.id} />
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
