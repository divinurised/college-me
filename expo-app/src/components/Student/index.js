import { View, StyleSheet } from 'react-native';

const Student = (props) => {
	return (
		<View>
			<Text>{props.name}</Text>
			<Text>{props.grades}</Text>
			<Text>{props.faults}</Text>
		</View>
	);
};

export default Student;

const styles = StyleSheet.create({
	name: {
		backgroundColor: 'blue',
		fontWeight: 'bold',
		fontSize: 25,
	},
});
