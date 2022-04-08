import { useState, useEffect } from 'react';
import { StatusBar } from 'expo-status-bar';
import {
	StyleSheet,
	Text,
	ScrollView,
	View,
	SafeAreaView,
	TextInput,
} from 'react-native';
import Box from './src/components/Box';
import Student from './src/components/Student';
import { AntDesign, Feather } from '@expo/vector-icons';
import Nubank from './src/components/Nubank';
import AtividadeUm from './src/components/AtividadeUm';
import AtividadeDois from './src/components/AtividadeDois';

export default function App() {
	return <AtividadeDois />;
}
