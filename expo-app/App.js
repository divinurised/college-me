import { StatusBar } from 'expo-status-bar';
import { StyleSheet, Text, View } from 'react-native';
import Box from './src/components/Box';
import Title from './src/components/Title';

export default function App() {
	return (
		<View style={styles.container}>
			<Text style={{ color: '#fff', marginBottom: 5 }}>
				This is a color palette from{' '}
				<Text
					style={{
						color: '#485665',
						textDecorationLine: 'underline',
					}}
					onPress={() => {
						Linking.openURL('https://techup.co.in');
					}}
				>
					coolors.co
				</Text>
			</Text>
			<View style={{ display: 'flex', flexDirection: 'row' }}>
				<Box color={'#1E3231'} />
				<Box color={'#485665'} />
				<Box color={'#8E7C93'} />
				<Box color={'#D0A5C0'} />
				<Box color={'#F6C0D0'} />
			</View>
			<View style={{ marginTop: 5 }}>
				<Title title={'eu sou lindo'} value={'lindo demais'} />
			</View>
			<StatusBar style="auto" />
		</View>
	);
}

const styles = StyleSheet.create({
	container: {
		flex: 1,
		backgroundColor: '#111',
		alignItems: 'center',
		justifyContent: 'center',
	},
});
