import { StatusBar } from 'expo-status-bar';
import { StyleSheet, Text, View } from 'react-native';

import { NativeModules, Alert } from 'react-native'
const { RNTestModule } = NativeModules

export default function App() {

  //Somewhere in your application
  RNTestModule.logMessage("RNTestModule", "Hello World!").then(msg => {
    Alert.alert("Invoke RNTestModule", `${msg}`)
  })
  return (
    <View style={styles.container}>
      <Text>Open up App.js to start working on your app!</Text>
      <StatusBar style="auto" />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
});
