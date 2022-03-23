import { View, Text, StyleSheet, ScrollView } from 'react-native';

import { AntDesign } from '@expo/vector-icons';
import { MaterialIcons } from '@expo/vector-icons';
import { FontAwesome } from '@expo/vector-icons';
import { FontAwesome5 } from '@expo/vector-icons';
import { MaterialCommunityIcons } from '@expo/vector-icons';

import {
	Amount,
	AmountText,
	CardContainer,
	ViewContainer,
	BannerContainer,
} from './styles';
import Category from '../Category';

const categories = [
	{
		title: 'Pix',
		icon: () => {
			return <MaterialIcons name="attach-money" size={24} color="black" />;
		},
	},
	{
		title: 'Pagar',
		icon: () => {
			return <FontAwesome name="barcode" size={24} color="black" />;
		},
	},
	{
		title: 'Transferir',
		icon: () => {
			return <FontAwesome5 name="money-bill" size={24} color="black" />;
		},
	},
	{
		title: 'Depositar',
		icon: () => {
			return <FontAwesome5 name="money-bill" size={24} color="black" />;
		},
	},
	{
		title: 'Guardar',
		icon: () => {
			return (
				<MaterialCommunityIcons name="piggy-bank" size={24} color="black" />
			);
		},
	},
	{
		title: 'Cartões',
		icon: () => {
			return <AntDesign name="creditcard" size={24} color="black" />;
		},
	},
];

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
				<AntDesign
					name="right"
					size={18}
					color="black"
					style={styles.rightArrow}
				/>
			</View>
			<Amount>
				<AmountText>R$ 1.327,00</AmountText>
			</Amount>
			<ScrollView
				horizontal={true}
				showsHorizontalScrollIndicator={false}
				style={{ paddingLeft: 25, marginTop: 25 }}
			>
				{categories.map((category) => (
					<Category title={category.title} Icon={category.icon} />
				))}
			</ScrollView>
			<CardContainer>
				<ViewContainer>
					<MaterialCommunityIcons
						name="credit-card-multiple-outline"
						size={24}
						color="black"
					/>
					<Text style={{ marginLeft: 15 }}>Meus cartões</Text>
				</ViewContainer>
				<Text>3</Text>
			</CardContainer>
			<ScrollView
				horizontal={true}
				showsHorizontalScrollIndicator={false}
				style={{ marginLeft: 25 }}
			>
				<BannerContainer>
					<Text>
						Conheça{' '}
						<Text style={{ color: '#9c44dc', fontFamily: 'Inter_700Bold' }}>
							Nubank Vida:
						</Text>{' '}
						um seguro simples e que cabe no bolso.
					</Text>
				</BannerContainer>
				<BannerContainer>
					<Text>
						Conheça{' '}
						<Text style={{ color: '#9c44dc', fontFamily: 'Inter_700Bold' }}>
							Nubank Vida:
						</Text>{' '}
						um seguro simples e que cabe no bolso.
					</Text>
				</BannerContainer>
			</ScrollView>
		</View>
	);
}

const styles = StyleSheet.create({
	container: {
		justifyContent: 'flex-start',
		backgroundColor: '#fff',
	},
	account: {
		paddingRight: 25,
		paddingLeft: 25,
		paddingTop: 25,
		flexDirection: 'row',
		justifyContent: 'space-between',
		alignItems: 'center',
		fontWeight: 'bold',
	},
	rightArrow: {
		opacity: 0.3,
	},
});
