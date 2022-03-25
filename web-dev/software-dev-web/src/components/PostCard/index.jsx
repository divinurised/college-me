import Link from 'next/link';
import styles from './styles.module.scss';

export default function PostCard({ post }) {
	return (
		<div className={styles.container}>
			<Link href={`/posts/${post.id}`}>
				<a>
					<h2>{post.name}</h2>
					<p>{post.body}</p>
				</a>
			</Link>
		</div>
	);
}
