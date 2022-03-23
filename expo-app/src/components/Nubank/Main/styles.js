import styled from 'styled-components/native';

export const Amount = styled.View`
	margin-top: 16px;
	padding: 0 25px;
`;

export const AmountText = styled.Text`
	font-size: 25px;
	font-weight: bold;
	font-family: 'Inter_700Medium';
`;

export const CardContainer = styled.View`
	flex-direction: row;
	justify-content: space-between;
	align-items: center;
	margin: 25px;
	background: rgba(0, 0, 0, 0.1);
	padding: 15px;

	font-family: 'Inter_700Bold';
	border-radius: 13px;
`;

export const ViewContainer = styled.View`
	flex-direction: row;
	align-items: center;
`;

export const BannerContainer = styled.View`
	align-self: flex-start;
	max-width: 80%;
	margin: 0 20px 25px 0;
	background: rgba(0, 0, 0, 0.1);
	padding: 25px;
	border-radius: 15px;
`;
