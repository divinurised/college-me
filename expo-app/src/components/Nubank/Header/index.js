import { StyleSheet, Text, View, SafeAreaView } from 'react-native';
import { useFonts, Inter_500Medium } from '@expo-google-fonts/inter';
import { AntDesign, Feather } from '@expo/vector-icons';
import { StatusBar } from 'expo-status-bar';

export default function Header() {
	let [fontsLoaded] = useFonts({
		Inter_500Medium,
	});

	if (!fontsLoaded) {
		return <Text>Loading</Text>;
	}
	return (
		<>
			<StatusBar style="auto" />
			<View style={styles.header}>
				<View style={styles.iconsWrapper}>
					<View style={styles.userIconContainer}>
						<AntDesign name="user" size={24} style={styles.userIcon} />
					</View>
					<View style={styles.iconsContainer}>
						<Feather name="eye" size={24} color="white" style={styles.icons} />
						<AntDesign
							name="questioncircleo"
							size={24}
							color="white"
							style={styles.icons}
						/>
						<Feather name="mail" size={24} color="white" style={styles.icons} />
					</View>
				</View>
				<Text
					style={{
						fontFamily: 'Inter_500Medium',
						fontSize: 20,
						color: '#fff',
					}}
				>
					Olá, Davi
				</Text>
			</View>
		</>
	);
}

const styles = StyleSheet.create({
	header: {
		padding: 25,
		height: '23%',
		backgroundColor: '#9c44dc',
		justifyContent: 'space-between',
	},
	iconsWrapper: {
		flexDirection: 'row',
		justifyContent: 'space-between',
	},
	iconsContainer: {
		flexDirection: 'row',
	},
	icons: {
		padding: 10,
		marginLeft: 5,
	},
	userIconContainer: {
		alignSelf: 'flex-start',
		backgroundColor: '#bc8ae1',
		padding: 10,
		borderRadius: 100,
	},
	userIcon: {
		color: '#fff',
	},
});
