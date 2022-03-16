import { View, Text, StyleSheet, ScrollView } from 'react-native';
import { AntDesign } from '@expo/vector-icons';

export default function Main() {
	return (
		<View style={styles.container}>
			<View style={styles.account}>
				<Text
					style={{
						fontFamily: 'Inter_500Medium',
						fontSize: 20,
						color: '#000',
					}}
				>
					Conta
				</Text>
				<AntDesign name="right" size={24} color="black" />
			</View>
		</View>
	);
}

const styles = StyleSheet.create({
	container: {
		justifyContent: 'flex-start',
		backgroundColor: '#fff',
		padding: 20,
	},
	account: {
		flexDirection: 'row',
		justifyContent: 'space-between',
	},
});
