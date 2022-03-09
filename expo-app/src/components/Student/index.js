import { View, StyleSheet, Text } from 'react-native';

const Student = (props) => {
	return (
		<View style={styles.container}>
			<Text style={styles.name}>{props.name}</Text>
			<Text style={props.grades < 6 ? styles.denied : styles.approved}>
				grade: {props.grades}
			</Text>
			{props.grades < 6 ? (
				<Text style={styles.denied}>Reprovado</Text>
			) : (
				<Text style={styles.approved}>Aprovado</Text>
			)}
			<Text style={styles.faults}>faults: {props.faults}</Text>
		</View>
	);
};

export default Student;

const styles = StyleSheet.create({
	container: {
		borderWidth: 1,
		borderColor: '#fff',
		padding: 16,
		borderRadius: 8,
		marginTop: 8,
	},
	name: {
		color: 'blue',
		fontWeight: 'bold',
		fontSize: 25,
	},
	approved: {
		color: 'blue',
		fontSize: 15,
		fontStyle: 'italic',
		textDecorationLine: 'underline',
	},
	faults: {
		color: '#fff',
		fontSize: 15,
		fontStyle: 'italic',
		textDecorationLine: 'underline',
	},
	denied: {
		color: 'red',
		fontSize: 15,
		fontStyle: 'italic',
		textDecorationLine: 'underline',
	},
});
