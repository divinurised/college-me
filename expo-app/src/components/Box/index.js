import { View } from 'react-native';

const Box = (props) => {
	return (
		<View
			style={{
				width: 30,
				height: 30,
				backgroundColor: props.color || '#fff',
				marginRight: 5,
			}}
		/>
	);
};

export default Box;
