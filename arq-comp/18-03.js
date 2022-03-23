const colors = ['green', 'yellow', 'red'];

export default function TrafficLight() {
	const [green, setGreen] = useState(false);
	const [yellow, setYellow] = useState(false);
	const [red, setRed] = useState(false);

	// function interval() {
	// 	for (const color in colors) {
	// 	}
	// }

	useEffect(() => {
		if (green === true) {
			setYellow(false);
			setRed(false);
		}
		if (yellow === true) {
			setGreen(false);
			setRed(false);
		}
		if (red === true) {
			setGreen(false);
			setYellow(false);
		}
	}, []);

	function handleChangeTrafficLights() {
		setGreen(true);
		setInterval(() => {
			setYellow(true);
			setInterval(() => {
				setRed(true);
			}, 2000);
		}, 5000);
	}

	return null;
}
