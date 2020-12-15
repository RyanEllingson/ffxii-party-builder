import Home from "./components/Home";
import Espers from "./components/Espers";
import {
  BrowserRouter as Router,
  Switch,
  Route
} from "react-router-dom";
import './App.css';

function App() {
  return (
    <Router>
      <Switch>
        <Route path="/espers">
          <Espers />
        </Route>
        <Route path="/">
          <Home />
        </Route>
      </Switch>
    </Router>
  );
};

export default App;
