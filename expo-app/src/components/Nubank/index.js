import { SafeAreaView } from 'react-native';
import Header from './Header';
import Main from './Main';

export default function Nubank() {
	return (
		<SafeAreaView style={{ flex: '1' }}>
			<Header />
			<Main />
		</SafeAreaView>
	);
}
