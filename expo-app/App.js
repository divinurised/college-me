import { StatusBar } from 'expo-status-bar';
import { StyleSheet, Text, ScrollView, View, SafeAreaView } from 'react-native';
import Box from './src/components/Box';
import Student from './src/components/Student';
import { AntDesign, Feather } from '@expo/vector-icons';
import Nubank from './src/components/Nubank';

export default function App() {
	return (
		// <View style={styles.container}>
		// 	<ScrollView style={{ marginTop: 30 }}>
		// 		<Student name="Davi" grades="10" faults={10} />
		// 		<Student name="Pedro" grades="5" faults={2} />
		// 		<Student name="Samuel" grades="3" faults={0} />
		// 		<Student name="Mariana" grades="8" faults={10} />
		// 		<Student name="Paulo" grades="4" faults={7} />
		// 	</ScrollView>
		// 	<StatusBar style="auto" />
		// </View>
		<Nubank />
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
