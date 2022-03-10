import { useRouter } from 'next/router';
import { useEffect, useState } from 'react';

import styles from './styles.module.scss';

function Post() {
	const { query } = useRouter();
	const [response, setResponse] = useState([]);
	const [isLoading, setIsLoading] = useState(true);
	const idToNumber = Number(query.id);

	useEffect(() => {
		(async function getData() {
			await fetch('https://jsonplaceholder.typicode.com/comments')
				.then((response) => response.json())
				.then((json) => setResponse(json));
			console.log(response[0]);
			setIsLoading(false);
		})();
	}, []);

	return (
		<div className={styles.container}>
			<div className={styles.postHeader}>
				<h1>{isLoading ? 'Loading...' : response[idToNumber].name}</h1>
				<p className={styles.author}>
					{isLoading ? 'Loading...' : response[idToNumber].email}
				</p>
			</div>
			<div className={styles.postBody}>
				<p>{isLoading ? 'Loading...' : response[idToNumber].body}</p>
			</div>
		</div>
	);
}

export default Post;
