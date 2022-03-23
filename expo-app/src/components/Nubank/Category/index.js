import { Text } from 'react-native';
import { Container, IconContainer } from './styles';

export default function Category({ title, Icon }) {
	return (
		<Container>
			<IconContainer>
				<Icon />
			</IconContainer>
			<Text>{title}</Text>
		</Container>
	);
}
