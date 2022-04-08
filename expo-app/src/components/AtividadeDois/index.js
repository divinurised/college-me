import { useState, useEffect } from 'react';
import { StyleSheet, Text, ScrollView, View, TextInput } from 'react-native';

export default function Atividade() {
	const [weight, setWeight] = useState(0);
	const [height, setHeight] = useState(0);
	const [IMC, setIMC] = useState(0);
	const [result, setResult] = useState('');

	useEffect(() => {
		setIMC((weight / height) ^ 2);
		if (IMC < 20) {
			setResult('Magricelo');
		} else if (IMC >= 20 && IMC < 25) {
			setResult('Magro');
		} else if (IMC >= 25 && IMC < 28) {
			setResult('Forte');
		} else if (IMC >= 28) {
			setResult('Gordinho');
		}
	}, [weight, height]);

	return (
		<ScrollView style={styles.container}>
			<View
				style={{ flexDirection: 'column', flex: 1 }}
				contentContainerStyle={{ flexGrow: 1 }}
				keyboardShouldPersistTaps="handled"
			>
				<TextInput
					style={styles.input}
					keyboardType="number-pad"
					placeholder="Digite seu peso"
					onChangeText={setWeight}
				/>
				<TextInput
					style={styles.input}
					keyboardType="number-pad"
					placeholder="Digite sua altura"
					onChangeText={setHeight}
				/>
				<Text style={{ margin: 20 }}>Seu IMC é: {IMC}</Text>
				<Text style={{ margin: 20 }}>Resultado {result}</Text>
			</View>
		</ScrollView>
	);
}

const styles = StyleSheet.create({
	input: {
		padding: 10,
		margin: 20,
		borderWidth: 1,
		borderColor: '#000',
		borderStyle: 'solid',
	},
});
