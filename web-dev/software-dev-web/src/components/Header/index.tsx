import Image from 'next/image';
import Link from 'next/link';
import LogoImage from '../../public/logo.jpeg';
import styles from './styles.module.scss';
import { useRouter } from 'next/router';

import { FaDev } from 'react-icons/fa';

function Header() {
	const { asPath } = useRouter();
	return (
		<header className={styles.container}>
			<div className={styles.content}>
				<h1 className={styles.logo}>
					<a href="">
						<FaDev />
						DevNews!
					</a>
				</h1>
				<nav className={styles.navigation}>
					<Link href="/">
						<a className={asPath === '/' ? styles.active : undefined}>Home</a>
					</Link>
					<Link href="/posts">
						<a className={asPath === '/posts' ? styles.active : undefined}>
							Posts
						</a>
					</Link>
				</nav>
			</div>
		</header>
	);
}

export default Header;
