import { SafeAreaView, Text } from 'react-native';
import Header from './Header';
import Main from './Main';
import {
	useFonts,
	Inter_500Medium,
	Inter_700Bold,
} from '@expo-google-fonts/inter';

export default function Nubank() {
	let [fontsLoaded] = useFonts({
		Inter_500Medium,
	});

	if (!fontsLoaded) {
		return <Text>Loading</Text>;
	}
	return (
		<SafeAreaView style={{ flex: '1' }}>
			<Header />
			<Main />
		</SafeAreaView>
	);
}
