import Image from 'next/image';
import Link from 'next/link';
import LogoImage from '../../public/logo.jpeg';
import styles from './styles.module.scss';

function Header() {
	return (
		<header className={styles.container}>
			<div className={styles.content}>
				<Image src={LogoImage} alt="Logo" />
				<nav>
					<Link href="/">Home</Link>
					<Link href="/posts">Posts</Link>
					<p></p>
				</nav>
			</div>
		</header>
	);
}

export default Header;
