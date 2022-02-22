import { StatusBar } from 'expo-status-bar';
import { StyleSheet, Text, View } from 'react-native';

export default function App() {
	return (
		<View style={styles.container}>
			<Text style={{ color: '#fff' }}>Hello world!</Text>
			<View style={{ display: 'flex', width: 100 }}>
				<View
					style={{
						width: 30,
						height: 30,
						borderRadius: '1rem',
						background: '#fff',
						display: 'block',
					}}
				></View>
				<View
					style={{
						width: 30,
						height: 30,
						borderRadius: '1rem',
						backgroundColor: '#fff',
					}}
				></View>
				<View
					style={{
						width: 30,
						height: 30,
						borderRadius: '1rem',
						background: '#fff',
					}}
				></View>
				<View
					style={{
						width: 30,
						height: 30,
						borderRadius: '1rem',
						background: '#fff',
					}}
				></View>
			</View>
			<StatusBar style="auto" />
		</View>
	);
}

//aksdfjhj

const styles = StyleSheet.create({
	container: {
		flex: 1,
		backgroundColor: '#111',
		alignItems: 'center',
		justifyContent: 'center',
	},
});
