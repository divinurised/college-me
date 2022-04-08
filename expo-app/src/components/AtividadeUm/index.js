import { useState } from 'react';
import { StyleSheet, Text, ScrollView, View, TextInput } from 'react-native';

export default function Atividade() {
	const [distance, setDistance] = useState(0);
	const [gas, setGas] = useState(0);
	const [ethanol, setEthanol] = useState(0);

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
					placeholder="Digite a distância em quilômetros"
					onChangeText={setDistance}
				/>
				<TextInput
					style={styles.input}
					keyboardType="number-pad"
					placeholder="Digite o preço da gasolina"
					onChangeText={setGas}
				/>
				<TextInput
					style={styles.input}
					keyboardType="number-pad"
					placeholder="Digite o preço do etanol"
					onChangeText={setEthanol}
				/>
				<Text style={{ margin: 20 }}>
					Valor gasto em gasolina: R$ {(gas * 11) / distance || 0}
				</Text>
				<Text style={{ margin: 20 }}>
					Valor gasto em etanol: R$ {(ethanol * 9) / distance || 0}
				</Text>
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
