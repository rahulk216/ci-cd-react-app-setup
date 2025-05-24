import "./App.css";

function App() {
  return (
    <div>
      <h1>PRACTISING CI/CD PIPELINES</h1>
      <h2>RAHUL MICH</h2>
      <h2>{import.meta.env.VITE_REACT_APP_ENV}</h2>
    </div>
  );
}

export default App;
