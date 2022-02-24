import { View, Text } from 'react-native';

const Title = (props) => {
	return (
		<View>
			<Text style={{ color: '#fff' }}>{props.title}</Text>
			<Text style={{ color: '#fff' }}>{props.value}</Text>
		</View>
	);
};

export default Title;
